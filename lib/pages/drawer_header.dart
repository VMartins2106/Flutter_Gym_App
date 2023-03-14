import 'package:flutter/material.dart';
import 'package:flutter_project/helper/helper_functions.dart';
import 'package:flutter_project/service/auth_service.dart';

class MyHeaderDrawer extends StatefulWidget {
  const MyHeaderDrawer({super.key});

  @override
  State<MyHeaderDrawer> createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {

  AuthService authService = AuthService();

  // gettind the data from the user
  @override
    void initState() {
      super.initState();
      gettingUserData();
  }
  String userName = "";
  String email = "";

  gettingUserData() async {
    await HelperFunctions.getUserNameFromSF().then((val) {
      setState(() {
        userName = val!;
      });
    });
    await HelperFunctions.getUserEmailFromSF().then((val){
      setState(() {
        email = val!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 139, 28, 20),
      width: double.infinity,
      height: 300,
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10.0),
            height: 150,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('images/profile-picture.jpg'),
              ),
            ),
          ),
          Text(
            userName, 
            style: const TextStyle(
              color: Colors.white, 
              fontSize: 28
            ),
          ),
          Text(
            email,
            style: TextStyle(
              color: Colors.grey[200],
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}