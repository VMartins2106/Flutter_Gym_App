import 'package:flutter/material.dart';
import 'package:flutter_project/helper/helper_functions.dart';
import 'package:flutter_project/pages/auth/login_page.dart';
import 'package:flutter_project/pages/chat/chat_page.dart';
import 'package:flutter_project/pages/drawer_header.dart';
import 'package:flutter_project/pages/nutrition_page.dart';
import 'package:flutter_project/pages/profile_page.dart';
import 'package:flutter_project/pages/workout/workout_page.dart';
import 'package:flutter_project/service/auth_service.dart';

import '../widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  AuthService authService = AuthService();

  // gettind the data from the user
  @override
    void initState() {
      super.initState();
      gettingUserData();
  }
  String userName = "";

  gettingUserData() async {
    await HelperFunctions.getUserNameFromSF().then((val) {
      setState(() {
        userName = val!;
      });
    });
  }

  var currentPage = DrawerSections.defaultt;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Fit Flutter"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 139, 28, 20),
      ),
      //extendBodyBehindAppBar: true,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                const MyHeaderDrawer(),
                const SizedBox(height: 20,),
                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),
      body: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: <Widget>[
            Image.asset("images/home.jpg",
              width: double.maxFinite,
              height: MediaQuery.of(context).size.height * 0.258,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 500),
              child: Image.asset("images/home_photo.jpg",
              width: double.maxFinite,
              height: MediaQuery.of(context).size.height * 0.35,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 220),
              child: Positioned(
                child: Container(
                  padding: const EdgeInsets.only(top: 45),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height - 550,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 250, left: 18),
              child: Positioned(
                child: Container(
                  padding: const EdgeInsets.only(top: 45),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                    boxShadow:[ 
                      BoxShadow(
                        color: const Color.fromARGB(255, 128, 0, 0).withOpacity(1),
                        spreadRadius: 5,
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 270, left: 25),
              child: Text(
                "   Bem vindo $userName a maior comunidade\n de musculação do mundo! Com os rostos\n       mais conhecidos de todo o país!!!",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 360, left: 50),
              child: SizedBox(
                width: 120,
                height: 110,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: const Image(
                    image: AssetImage("images/treinador.jpg"),
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 360, left: 200),
              child: SizedBox(
                width: 140,
                height: 110,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: const Image(
                    image: AssetImage("images/trainers.jpg"),
                  )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget MyDrawerList(){
    return Container(
      padding: const EdgeInsets.only(top: 15),
      child: Column(
        children: [
          menuItem(1, "Meu perfil", Icons.person_outlined),
          menuItem(2, "Treinadores", Icons.workspace_premium_outlined),
          menuItem(3, "Meus grupos", Icons.group),
          menuItem(4, "Nutricionista", Icons.food_bank),
          menuItem(5, "Sair", Icons.logout),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon){
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          switch (id) {
            case 1:
              nextScreen(context, ProfilePage());        
              break;
            case 2:
              nextScreen(context, const WorkoutPage());   
              break;
            case 3:
              nextScreen(context, const ChatPage());
              break;
            case 4:
              nextScreen(context, const NutritionPage());
              break;
            case 5:
              showDialog(
                barrierDismissible: false,
                context: context, 
                builder: (context) {
                  return AlertDialog(
                    title: const Text("Sair"),
                    content: const Text("Tem certeza que deseja sair?"),
                    actions: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        }, 
                        icon: const Icon(Icons.cancel, color: Colors.red,)
                      ),
                      IconButton(
                        onPressed: () async {
                          await authService.signOut();
                            Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(builder: (context) => const LoginPage()), 
                            (route) => false);
                        }, 
                        icon: const Icon(Icons.done, color: Colors.green,)
                      ),
                    ],
                  );
              });
              break;
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon, 
                  size: 25, 
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                    color: id == 5 ? Colors.red : Colors.black,
                    fontSize: 17,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}

enum DrawerSections{
  defaultt,
  perfil,
  treinos,
  chat,
  nutricionista
}