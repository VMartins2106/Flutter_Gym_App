import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/pages/profile_page.dart';
import 'package:flutter_project/service/database_service.dart';
import 'package:flutter_project/widgets/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../helper/helper_functions.dart';

// ignore: must_be_immutable
class ProfileDataPage extends StatefulWidget {
  ProfileDataPage({Key? key}) : super (key: key);

  @override
  State<ProfileDataPage> createState() => _ProfileDataPageState();
}

class _ProfileDataPageState extends State<ProfileDataPage> {

  // gettind the data from the user
  @override
    void initState() {
      super.initState();
      gettingUserData();
  }
  String userName = "";
  String email = "";
  String phone = "";
  final formKey = GlobalKey<FormState>();

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
    await HelperFunctions.getUserPhoneFromSF().then((val) {
      setState(() {
        phone = val!;
      });
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: SingleChildScrollView(
         child: Stack(
          children: <Widget>[
            Image.asset("images/edit-profile.jpg",
              width: double.maxFinite,
              height: MediaQuery.of(context).size.height * 0.573,
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.4,
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
              ),
            ),
            Positioned(
              top: 320,
              left: 20,
              child: Container(
                width: 360,
                height: MediaQuery.of(context).size.height * 0.615,
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
              padding: const EdgeInsets.only(top: 330, left: 130),
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
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 460, left: 40, right: 40),
              child: Column(
                children: [
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            label: Text(userName),
                            prefixIcon: const Icon(Icons.person),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide(width: 2, color: Colors.black),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(width: 2, color: Colors.blue),
                            )
                          ),
                          onChanged: (val){
                            setState(() {
                              userName = val;
                            });
                          },
                        ),
                        const SizedBox(height: 10),

                        TextFormField(
                          enabled: false,
                          decoration: InputDecoration(
                            label: Text(email),
                            prefixIcon: const Icon(Icons.email),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide(width: 2, color: Colors.black),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(width: 2, color: Colors.blue),
                            ),
                          ),
                        ),

                        const SizedBox(height: 10),
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            label: Text(phone),
                            prefixIcon: const Icon(Icons.phone),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide(width: 2, color: Colors.black),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(width: 2, color: Colors.blue),
                            )
                          ),
                          onChanged: (val){
                            setState(() {
                              phone = val;
                            });
                          },
                        ),
                        const SizedBox(height: 20),
                        Column(
                          children: [
                            Container(
                              height: 55,
                              width: double.maxFinite,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  stops: [0.3, 1],
                                  colors: [
                                    Color.fromARGB(255, 145, 185, 204),
                                    Color.fromARGB(255, 136, 226, 192),
                                  ],
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(32),
                                ),
                              ),
                              child: MaterialButton(
                                onPressed: (() {
                                  salvarDados();
                                }),
                                child: const Text("Salvar",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Container(
                              height: 55,
                              width: double.maxFinite,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  stops: [0.3, 1],
                                  colors: [
                                    Color.fromARGB(255, 145, 185, 204),
                                    Color.fromARGB(255, 136, 226, 192),
                                  ],
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(32),
                                ),
                              ),
                              child: MaterialButton(
                                onPressed: (() {
                                  nextScreenReplace(context, ProfilePage());
                                }),
                                child: const Text("Voltar",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                          const SizedBox(height: 49),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]
          ),
        ),
      ),
    );
  }
  salvarDados() async{

    final uid = FirebaseAuth.instance.currentUser!.uid;

    if(formKey.currentState!.validate()) {
      if(userName.isNotEmpty && email.isEmpty && phone.isEmpty){
        // JUST NAME
        HelperFunctions.saveUserNameSF(userName);
      } else if(userName.isEmpty && email.isNotEmpty && phone.isEmpty){
        // JUST EMAIL
        HelperFunctions.saveUserEmailSF(email);
      } else if(userName.isEmpty && email.isEmpty && phone.isNotEmpty){
        // JUST PHONE
        HelperFunctions.saveUserPhoneSF(phone);
      } else if(userName.isNotEmpty && email.isNotEmpty && phone.isNotEmpty){
        // NAME, EMAIL, PHONE
        HelperFunctions.saveUserEmailSF(email);
        HelperFunctions.saveUserNameSF(userName);
        HelperFunctions.saveUserPhoneSF(phone);
      } else if(userName.isNotEmpty && email.isNotEmpty && phone.isEmpty){
        // NAME, EMAIL
        HelperFunctions.saveUserEmailSF(email);
        HelperFunctions.saveUserNameSF(userName);
      } else if(userName.isNotEmpty && email.isEmpty && phone.isNotEmpty){
        // NAME, PHONE
        HelperFunctions.saveUserNameSF(userName);
        HelperFunctions.saveUserPhoneSF(phone);
      } else if(userName.isNotEmpty && email.isEmpty && phone.isNotEmpty){
        // PHONE, EMAIL
        HelperFunctions.saveUserEmailSF(email);
        HelperFunctions.saveUserPhoneSF(phone);
      }

      DatabaseService(uid: uid).updatingUserData(userName, phone);
      showSnackBar(context, Colors.green, "Dados alterados com sucesso!");

      nextScreenReplace(context, ProfilePage());

    } else{
      showSnackBar(context, Colors.red, "Algum erro ocorreu, tente novamente!");
    }
  }    
}