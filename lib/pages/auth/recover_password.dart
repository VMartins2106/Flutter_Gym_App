import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class RecoverPassword extends StatefulWidget {
  const RecoverPassword({super.key});

  @override
  State<RecoverPassword> createState() => _RecoverPasswordState();
}

class _RecoverPasswordState extends State<RecoverPassword> {

  String email = '';

  Future passwordReset() async {
    try{
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);

      showSnackBar(context, Colors.green, "Link para mudança de senha enviada! Olhe seu email. (Pode ser que fique em spams!)");
      
    } on FirebaseAuthException catch(e){
      
      showSnackBar(context, Colors.red, e.message.toString());
      
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.maxFinite,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: <Widget>[
              Image.asset(
                "images/senha.png",
                width: double.maxFinite,
                height: MediaQuery.of(context).size.height * 0.33465,
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.22,
                child: Container(
                  padding: const EdgeInsets.only(left: 40, right: 40, top: 45),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(70),
                      topRight: Radius.circular(70),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Image.asset("images/procurando.png"),
                      const Padding(
                        padding: EdgeInsets.only(top: 50, bottom: 15),
                        child: Text(
                          "Esqueceu sua senha?",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const Text(
                        "Por favor, informe o e-mail associado a sua conta que enviaremos um link para o mesmo com as instruções para restauração da conta",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25, bottom: 30),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            icon: Icon(Icons.email,
                            color: Colors.black,),
                            hintText: "email",
                            border: InputBorder.none
                          ),
                          onChanged: (val){
                            setState(() {
                              email = val;
                            });
                          },
                          validator: (val){
                            return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(val!) ? null : "Coloque um email válido";
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(),
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
                            child: Text("Enviar",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                            onPressed: (() => passwordReset()
                          ),
                        ),
                      ),
                    ),],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}