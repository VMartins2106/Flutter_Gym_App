import 'package:flutter/material.dart';
import 'package:flutter_project/pages/workout/LEGENDS/treino_kobe.dart';
import 'package:flutter_project/pages/workout/LEGENDS/treino_tate.dart';
import 'package:flutter_project/pages/workout/LEGENDS/treino_wolf.dart';
import 'package:flutter_project/service/auth_service.dart';
import 'package:flutter_project/widgets/widgets.dart';
import 'package:slide_to_act/slide_to_act.dart';

class WorkoutPage2 extends StatefulWidget {
  const WorkoutPage2({super.key});

  @override
  State<WorkoutPage2> createState() => _WorkoutPageState2();
}

class _WorkoutPageState2 extends State<WorkoutPage2> {

  AuthService authService = AuthService();

  @override
  Widget build(BuildContext context) {

    final screenMedia = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.maxFinite,
          height: screenMedia.height,
          child: Stack(
            children: [
              Image.asset("images/novo_treino.jpg",
                width: double.maxFinite,
                height: screenMedia.height * 0.691,
              ),
              Positioned(
                top: 320,
                child: Container(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 45),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                     boxShadow:[ 
                      BoxShadow(
                        color: Colors.red.shade900,
                        spreadRadius: 10,
                        blurRadius: 7,
                        offset: const Offset(0, 2),
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 280,
                left: 48,
                child: Container(
                  width: 300,
                  height: 160,
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
                  child: Padding(
                    padding: const EdgeInsets.only(top: 9, left: 27),
                    child: Text(
                      "Bem vindo a sua nova etapa\n              dos treinos!!",
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
                padding: const EdgeInsets.only(top: 330, left: 140),
                child: Image.asset("images/new.png",
                  width: 120,
                  height: 100,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 415, left: 90),
                child: Text(
                  "Boa sorte nesta sua nova jornada!",
                  style: TextStyle(
                    color: Colors.blueGrey.shade600,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 460, left: 16),
                    child: Positioned(
                      top: 470,
                      left: 48,
                      child: Container(
                        width: 360,
                        height: 380,
                        decoration: BoxDecoration(
                          boxShadow:[ 
                            BoxShadow(
                              color: Colors.red.shade800.withOpacity(1),
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
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: GestureDetector(
                                onTap: () {
                                  nextScreen(context, const TreinoKobe());
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 20, left: 20, right: 8),
                                  child: Row(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(100),
                                        child: Image.asset(
                                          "images/kobe.jpg",
                                          width: 90,
                                          height: 90,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Kobe Bryant",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: screenMedia.width * 0.065
                                              ),
                                            ),
                                            Text(
                                              "Basketball Legend",
                                              style: TextStyle(
                                                color: Colors.indigo,
                                                fontWeight: FontWeight.bold,
                                                fontSize: screenMedia.width * 0.04,
                                              ),
                                            ),
                                            Row(
                                              children: const [
                                                Icon(
                                                  Icons.star_rounded,
                                                  color: Colors.amber,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  "900k",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: GestureDetector(
                              onTap: () {
                                nextScreen(context, const TreinoTate());
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(top: 0, left: 20, right: 8),
                                child: Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Image.asset(
                                        "images/tate.jpg",
                                        width: 90,
                                        height: 90,
                                        fit: BoxFit.cover,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Andrew Tate",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: screenMedia.width * 0.065
                                              ),
                                            ),
                                            Text(
                                              "Multibillionaire",
                                              style: TextStyle(
                                                color: Colors.indigo,
                                                fontWeight: FontWeight.bold,
                                                fontSize: screenMedia.width * 0.04,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 5),
                                              child: Row(
                                                children: const [
                                                  Icon(
                                                    Icons.star_rounded,
                                                    color: Colors.amber,
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    "1.6 M",
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: GestureDetector(
                              onTap: () {
                                nextScreen(context, const TreinoWolf());
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(top: 0, left: 20, right: 8),
                                child: Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Image.asset(
                                        "images/wolf.jpg",
                                        width: 90,
                                        height: 90,
                                        fit: BoxFit.cover,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "The Wolf",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: screenMedia.width * 0.065
                                              ),
                                            ),
                                            Text(
                                              "Wolf of Wall Street",
                                              style: TextStyle(
                                                color: Colors.indigo,
                                                fontWeight: FontWeight.bold,
                                                fontSize: screenMedia.width * 0.04,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 5),
                                              child: Row(
                                                children: const [
                                                  Icon(
                                                    Icons.star_rounded,
                                                    color: Colors.amber,
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    "5.6 M",
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
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
            ],
          )
        ),
      ),
    );
  }
}