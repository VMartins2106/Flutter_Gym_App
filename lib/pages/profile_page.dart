import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/pages/profile_data_page.dart';
import 'package:flutter_project/service/auth_service.dart';
import 'package:flutter_project/widgets/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

import '../helper/helper_functions.dart';
import 'auth/login_page.dart';

// ignore: must_be_immutable
class ProfilePage extends StatefulWidget {
  ProfilePage({Key? key}) : super (key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
            Image.asset("images/profile.jpg",
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height * 0.648,
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.31,
              child: Container(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 45),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 120),
                        child: ListTile(
                          onTap: () {
                            nextScreenReplace(context, ProfileDataPage());
                          },
                          leading: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.blueAccent.withOpacity(0.1),
                            ),
                            child: const Icon (Icons.person),
                          ),
                          title: const Text(
                            "Editar informações pessoais", 
                            style: TextStyle(color: Colors.blueGrey
                            ),
                          ),
                          trailing: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.grey.withOpacity(0.1),
                            ),
                            child: const Icon (Icons.arrow_right),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 190),
                        child: ListTile(
                          onTap: () {
                            showDialog(
                              barrierDismissible: false,
                              context: context, 
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text("Responsabilidade"),
                                  content: const Text("Ao utilizar o aplicativo você concorda em mudar de vida, adotar novas práticas e ir atrás do shape inexplicável!"),
                                  actions: [
                                    IconButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      }, 
                                      icon: const Icon(Icons.done, color: Colors.green,)
                                    ),
                                  ],
                                );
                            });
                          },
                          leading: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.blueAccent.withOpacity(0.1),
                            ),
                            child: const Icon (Icons.document_scanner),
                          ),
                          title: const Text(
                            "Termo de responsabilidade", 
                            style: TextStyle(color: Colors.blueGrey
                            ),
                          ),
                          trailing: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.grey.withOpacity(0.1),
                            ),
                            child: const Icon (Icons.arrow_right),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 260),
                        child: ListTile(
                          onTap: () {
                            showDialog(
                              barrierDismissible: false,
                              context: context, 
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text("Sobre"),
                                  content: const Text("Aplicativo desenvolvido em Flutter, para aprimorar as habilidades de desenvolvimento em uma das linguagens mais amplas para o desenvolvimento mobile!"),
                                  actions: [
                                    IconButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      }, 
                                      icon: const Icon(Icons.done, color: Colors.green,)
                                    ),
                                  ],
                                );
                            });
                          },
                          leading: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.blueAccent.withOpacity(0.1),
                            ),
                            child: const Icon (Icons.info_outline),
                          ),
                          title: const Text(
                            "Sobre o aplicativo", 
                            style: TextStyle(color: Colors.blueGrey
                            ),
                          ),
                          trailing: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.grey.withOpacity(0.1),
                            ),
                            child: const Icon (Icons.arrow_right),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 330),
                        child: ListTile(
                          onTap: () {
                            showDialog(
                              barrierDismissible: false,
                              context: context, 
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text("Contato"),
                                  content: const Text("(11)96058-6785"),
                                  actions: [
                                    IconButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      }, 
                                      icon: const Icon(Icons.cancel, color: Colors.red,)
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        abrirWhatsApp();
                                        Navigator.pop(context);
                                      }, 
                                      icon: const Icon(Icons.whatsapp_outlined, color: Colors.green,)
                                    ),
                                  ],
                                );
                              }
                            );
                          },
                          leading: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.blueAccent.withOpacity(0.1),
                            ),
                            child: const Icon (Icons.contact_phone),
                          ),
                          title: const Text(
                            "Contato do desenvolvedor", 
                            style: TextStyle(color: Colors.blueGrey
                            ),
                          ),
                          trailing: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.grey.withOpacity(0.1),
                            ),
                            child: const Icon (Icons.arrow_right),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 440),
                        child: ListTile(
                          onTap: () async {
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
                          },
                          leading: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.blueAccent.withOpacity(0.1),
                            ),
                            child: const Icon (Icons.logout),
                          ),
                          title: const Text(
                            "Sair do aplicativo", 
                            style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
            ),
            Positioned(
              top: 200,
              left: 40,
              child: Container(
                width: 320,
                height: 200,
                decoration: BoxDecoration(
                  boxShadow:[ 
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.8),
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
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 210),
              child: Column(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: const Image(
                        image: AssetImage("images/profile-picture.jpg"),
                      )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Center(
                      child: Text(userName,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(
                      'Id: ${FirebaseAuth.instance.currentUser!.uid}',
                      style: const TextStyle(
                        fontSize: 14, 
                        color: Color.fromARGB(255, 119, 116, 116)
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
    );
  }

  abrirWhatsApp() async {
    var whatsappUrl = "whatsapp://send?phone=+5511960586785&text=Olá, tudo bem?\nVim pelo flutter!";
    launch(whatsappUrl);

    /* ignore: deprecated_member_use
    if (await canLaunch(whatsappUrl)) {
      // ignore: deprecated_member_use
      await launch(whatsappUrl);
    } else {
      throw 'Could not launch $whatsappUrl';
    }*/
  }

}