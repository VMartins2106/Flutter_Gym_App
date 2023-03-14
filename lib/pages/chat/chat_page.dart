import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/helper/helper_functions.dart';
import 'package:flutter_project/pages/auth/login_page.dart';
import 'package:flutter_project/pages/chat/fab_vertical_delegate.dart';
import 'package:flutter_project/pages/chat/search_page.dart';
import 'package:flutter_project/pages/profile_page.dart';
import 'package:flutter_project/service/auth_service.dart';
import 'package:flutter_project/service/database_service.dart';
import 'package:flutter_project/widgets/group_tile.dart';
import 'package:flutter_project/widgets/widgets.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> with SingleTickerProviderStateMixin {

  AuthService authService = AuthService();

  String userName = "";
  String email = "";

  Stream? groups;

  bool _isLoading = false;

  String groupName = "";
  
  late AnimationController animation;
  final menuIsOpen = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();
    gettingUserData();
    animation = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
    );
  }
  
  // string manipulation
  String getId(String res){
    return res.substring(0, res.indexOf("_"));
  }
  String getName(String res){
    return res.substring(res.indexOf("_")+1);
  }

  gettingUserData() async {
    await HelperFunctions.getUserEmailFromSF().then((value) {
      setState(() {
        email = value!;
      });
    });
    await HelperFunctions.getUserNameFromSF().then((val) {
      setState(() {
        userName = val!;
      });
    });
    // getting the list of snapshot in our stream

    await DatabaseService(uid: FirebaseAuth.instance.currentUser!.uid)
      .getUserGroup()
        .then((snapshot) {
          setState(() {
            groups = snapshot;
          });
        });
  }

  @override
  void dispose() {
    animation.dispose();
    super.dispose();
  }

  toggleMenu(){
    menuIsOpen.value ? animation.reverse() : animation.forward();
    menuIsOpen.value = !menuIsOpen.value;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: groupList(),
    );
  }

   popUpDialog(BuildContext context){
    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context) {
        return StatefulBuilder(
          builder: ((context, setState) {
          return AlertDialog(
            title: const Text(
              "Crie um grupo", 
              textAlign: TextAlign.left,
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _isLoading 
                ? const Center(child: CircularProgressIndicator(color: Colors.black),)
                : TextField(
                  onChanged: (val) {
                    setState(() {
                      groupName = val;
                    });
                  },
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Theme.of(context).primaryColor),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Theme.of(context).primaryColor),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ],
            ),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                }, 
                style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).primaryColor,
                ),
                child: const Text("Cancelar"),
              ),
              ElevatedButton(
                onPressed: () async {
                  if(groupName!=""){
                    setState(() {
                      _isLoading = true;
                    });
                    DatabaseService(uid: FirebaseAuth.instance.currentUser!.uid)
                      .createGroup(email, FirebaseAuth.instance.currentUser!.uid, groupName)
                        .whenComplete(() {
                          _isLoading = false;
                        });
                    Navigator.of(context).pop();
                    showSnackBar(context, Colors.green, "Grupo criado com sucesso.");
                  }
                }, 
                style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).primaryColor,
                ),
                child: const Text("Criar"),
              ),
            ],
          ); 
        }));
      }
    );
  }

  groupList(){
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            'images/cast.jpg',
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height * 0.258,
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.23,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                ),
                boxShadow: [ 
                  BoxShadow(
                    color: Theme.of(context).primaryColor,
                    spreadRadius: 8,
                    blurRadius: 7,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
            )
          ),
          Padding(
            padding: const EdgeInsets.only(top: 350),
            child: StreamBuilder(
              stream: groups,
              builder: ((context, AsyncSnapshot snapshot) {
                // make some checks
                if(snapshot.hasData){
                  if(snapshot.data['groups'] != null){  
                    if(snapshot.data['groups'].length != 0){
                      return ListView.builder(
                        itemCount: snapshot.data['groups'].length,
                        itemBuilder: (context, index) {
                          int reverseIndex = snapshot.data['groups'].length - index -1;
                          return GroupTile(
                            groupId: getId(snapshot.data['groups'][reverseIndex]), 
                            groupName: getName(snapshot.data['groups'][reverseIndex]), 
                            email: snapshot.data['email'],
                          );
                        },
                      );
                    } else{
                      return noGroupWidget();
                    }
                  } else{
                    return noGroupWidget();
                  }
                }else{
                  return Center(
                    child: CircularProgressIndicator(
                      color: Theme.of(context).primaryColor,
                    ),
                  );
                }
              }),
            ),
          ),
          Positioned(
            top: 220,
            left: 30,
            child: Container(
              width: 330,
              height: 150,
              decoration: BoxDecoration(
                boxShadow:[ 
                  BoxShadow(
                    color: Colors.grey.withOpacity(1),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 2),
                  ),
                ],
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                  bottomLeft: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 14, left: 40),
                child: Text(
                  "Converse com os melhores\n             agora mesmo!",
                  style: TextStyle(
                    color: Colors.blueGrey.shade600,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 250, left: 85),
            child: Image.asset("images/music_icon.png",
              width: 170,
              height: 130,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Flow(
              clipBehavior: Clip.none,
              delegate: FabVerticalDelegate(animation: animation),
              children: [
                FloatingActionButton(
                  child: AnimatedIcon(
                    icon: AnimatedIcons.menu_close,
                    progress: animation,
                  ),
                  onPressed: () => toggleMenu()
                ),
                FloatingActionButton(
                  child: const Icon(Icons.add),
                  onPressed: () => popUpDialog(context)
                ),
                FloatingActionButton(
                  child: const Icon(Icons.search),
                  onPressed: () {
                    nextScreen(context, const SearchPage());
                  }
                ),
              ],
            ),
          ),
        ],
      ),
    );
  } 

  noGroupWidget(){
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              popUpDialog(context);
            },
            child: Icon(
              Icons.add_circle, 
              color: Colors.grey[700], 
              size: 75,
            ),
          ),
          const SizedBox(height: 20,),
          const Text(
            "Você ainda não entrou em nenhum grupo, clique no botão para criar um ou pesquise um no botão superior.",
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

}