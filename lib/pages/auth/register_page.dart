import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../helper/helper_functions.dart';
import '../../service/auth_service.dart';
import '../../widgets/widgets.dart';
import '../home_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  bool _isLoading = false;
  final formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  String phone = "";
  String fullName = "";
  AuthService authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isLoading
      ? const Center(child: CircularProgressIndicator(color: Colors.black))
      : SingleChildScrollView(
        child: SizedBox(
          width: double.maxFinite,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: <Widget>[
              Image.asset("images/cadastro.jpg",
              width: double.maxFinite,
              height: MediaQuery.of(context).size.height * 0.48,
              ),
              Positioned(
                top: 340,
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
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Text(
                            "Insira seus dados",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                      ),
                      Padding(
                        padding:  const EdgeInsets.only(),
                        child: Form(
                          key: formKey,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: TextFormField(
                                  keyboardType: TextInputType.text,
                                  decoration: const InputDecoration(
                                    icon:  Icon(Icons.person,
                                    color: Colors.black,),
                                    hintText: "Nome",
                                    border: InputBorder.none
                                  ),

                                  // Save the name
                                  onChanged: (val){
                                    setState(() {
                                      fullName = val;
                                    });
                                  },
                                  validator: (val){
                                    if(val!.length <= 2){
                                      return "O nome deve conter no mínimo 3 caracteres!";
                                    } else{
                                      return null;
                                    }
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: const InputDecoration(
                                    icon: Icon(Icons.email,
                                    color: Colors.black,),
                                    hintText: "email",
                                    border: InputBorder.none
                                  ),
                                  //Savind and checking the email
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
                                padding: const EdgeInsets.only(bottom: 10),
                                child: TextFormField(
                                  keyboardType: TextInputType.visiblePassword,
                                  decoration: const InputDecoration(
                                    icon: Icon(Icons.password,
                                    color: Colors.black,),
                                    hintText: "senha",
                                    border: InputBorder.none
                                  ),
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
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: TextFormField(
                                  keyboardType: TextInputType.phone,
                                  decoration: const InputDecoration(
                                    icon: Icon(Icons.phone,
                                    color: Colors.black,),
                                    hintText: "Telefone",
                                    border: InputBorder.none
                                  ),
                                  onChanged: (val){
                                    setState(() {
                                      phone = val;
                                    });
                                  },
                                  validator: (val){
                                    if(val!.length <= 10){
                                      return "Telefone inválido";
                                    } else{
                                      return null;
                                    }
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
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
                                      child: Text("Cadastrar",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                        ),
                                      ),
                                      onPressed: (() {
                                        register();
                                      }
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  register() async {
    if(formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });
      await authService
        .registerUserWithEmailandPassword(fullName, email, password, phone)
        .then((value) async {
          if(value == true){
            // savind the shared preferences state

            await HelperFunctions.saveUserLoggedInStatus(true);
            await HelperFunctions.saveUserEmailSF(email);
            await HelperFunctions.saveUserNameSF(fullName);
            await HelperFunctions.saveUserPhoneSF(phone);

            showSnackBar(context, Colors.green, "Bem vindo $fullName");

            nextScreenReplace(context, const HomePage());

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