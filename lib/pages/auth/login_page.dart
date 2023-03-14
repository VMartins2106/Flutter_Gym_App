import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/pages/auth/recover_password.dart';
import 'package:flutter_project/pages/auth/register_page.dart';
import 'package:flutter_project/service/auth_service.dart';
import 'package:flutter_project/service/database_service.dart';

import '../../helper/helper_functions.dart';
import '../../widgets/widgets.dart';
import '../home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  bool _isLoading = false;
  AuthService authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isLoading 
      ? const Center(child: CircularProgressIndicator(color: Colors.black))
      : SingleChildScrollView(
        child: Container(
          width: double.maxFinite,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: <Widget>[
              Image.asset("images/login.jpg",
                width: double.maxFinite,
                height: MediaQuery.of(context).size.height * 0.573,
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.378,
                child: Container(
                  padding: const EdgeInsets.only(left: 40, right: 40, top: 60),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(70),
                      topRight: Radius.circular(70),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top:50),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(),
                          child: Form(
                            key: formKey,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 5),
                                  child: TextFormField(
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: const InputDecoration(
                                      icon: Icon(Icons.email,color: Colors.black),
                                      hintText: "Email",
                                      hintStyle: TextStyle(fontSize: 16),
                                      border: InputBorder.none
                                    ),

                                    // Save the data
                                    onChanged: (val){
                                      setState(() {
                                        email = val;
                                      });
                                    },

                                    // check the validation
                                    validator: (val){
                                      return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                        .hasMatch(val!) ? null : "Coloque um email válido";
                                    },
                                  ),
                                ),
                                Padding(
                                padding: const EdgeInsets.only(top: 5, bottom: 5),
                                child: TextFormField(
                                  keyboardType: TextInputType.visiblePassword,
                                  obscureText: true,
                                  decoration: const InputDecoration(
                                    icon: Icon(Icons.password,
                                    color: Colors.black,),
                                    hintText: "Senha",
                                    hintStyle: TextStyle(fontSize: 16),
                                    //suffixIcon: Icon(Icons.remove_red_eye),
                                    border: InputBorder.none
                                  ),

                                  // Save the data
                                  onChanged: (val){
                                    setState(() {
                                      password = val;
                                    });
                                  },
                                  validator: (val){
                                    if(val!.length < 6){
                                      return "A senha deve ter no mínimo 6 caracteres";
                                      } else{
                                      return null;
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 175, bottom: 40, top: 15),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Esqueceu sua senha?',
                                  style: const TextStyle(color: Colors.blueGrey),
                                  recognizer: TapGestureRecognizer()
                                  ..onTap = () { 
                                    nextScreen(context, const RecoverPassword());
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 30),
                          child: Container(
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
                              child: Text("Entrar",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                ),
                              ),
                              onPressed: (() {
                                  login();
                                }
                              ),                          
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 40),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                const TextSpan(
                                  text: 'Não tem conta? ',
                                  style: TextStyle(color: Colors.black),
                                ),
                                TextSpan(
                                  text: 'Cadastrar',
                                  style: const TextStyle(color: Colors.blue),
                                  recognizer: TapGestureRecognizer()
                                  ..onTap = () { 
                                    nextScreen(context, const RegisterPage());
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  login() async {
    if(formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });
      await authService
        .loginWithUserEmailandPassword(email, password)
        .then((value) async {
          if(value == true){
            // savind the shared preferences state

            QuerySnapshot snapshot = await DatabaseService(
              uid: FirebaseAuth.instance.currentUser!.uid)
                .gettingUserData(email);

            // saving the values to out SHARED PREFERENCES

            await HelperFunctions.saveUserLoggedInStatus(true);
            await HelperFunctions.saveUserEmailSF(email);
            await HelperFunctions.saveUserNameSF(snapshot.docs[0]['fullName']);
            await HelperFunctions.saveUserPhoneSF(snapshot.docs[0]['phone']);

            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => const HomePage()), 
              (route) => false);

          }
          else{
            showSnackBar(context, Colors.red, value);
            setState(() {
              _isLoading = false;
            });
          }
        });
    }
  }
}