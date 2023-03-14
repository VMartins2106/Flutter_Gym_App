import 'package:flutter/material.dart';
import 'package:flutter_project/pages/workout/LEGENDS/treino_arnold.dart';
import 'package:flutter_project/pages/workout/LEGENDS/treino_bambam.dart';
import 'package:flutter_project/pages/workout/LEGENDS/treino_breier.dart';
import 'package:flutter_project/pages/workout/LEGENDS/treino_eddie.dart';
import 'package:flutter_project/pages/workout/LEGENDS/treino_jay.dart';
import 'package:flutter_project/pages/workout/LEGENDS/treino_johann.dart';
import 'package:flutter_project/pages/workout/LEGENDS/treino_ronnie.dart';
import 'package:flutter_project/pages/workout/LEGENDS/treino_zyzz.dart';
import 'package:flutter_project/pages/workout/new_workout.dart';
import 'package:flutter_project/service/auth_service.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:flutter_project/widgets/widgets.dart';

class WorkoutPage extends StatefulWidget {
  const WorkoutPage({super.key});

  @override
  State<WorkoutPage> createState() => _WorkoutPageState();
}

class _WorkoutPageState extends State<WorkoutPage> {

  AuthService authService = AuthService();

  @override
  Widget build(BuildContext context) {

    final screenMedia = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.maxFinite,
          height: 1600,
          child: Stack(
            children: [
              Image.asset("images/olympia.jpg",
                width: double.maxFinite,
                height: 395,
              ),
              Positioned(
                top: 320,
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
                top: 300,
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
                    padding: const EdgeInsets.only(top: 15, left: 37),
                    child: Text(
                      "Os melhores treinadores \n   de todos os tempos!!",
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
                padding: const EdgeInsets.only(top: 360, left: 140),
                child: Image.asset("images/personal.png",
                  width: 90,
                  height: 70,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 430, left: 87),
                child: Text(
                  "Com o premiu você pode ter todos!",
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
                    padding: const EdgeInsets.only(top: 480, left: 16),
                    child: Positioned(
                      top: 470,
                      left: 48,
                      child: Container(
                        width: 360,
                        height: 1100,
                        decoration: BoxDecoration(
                          boxShadow:[ 
                            BoxShadow(
                              color: Colors.blue.shade300.withOpacity(1),
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
                                  // JOHAN
                                  nextScreen(context, const TreinoJohann());
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 20, left: 20, right: 8),
                                  child: Row(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(100),
                                        child: Image.asset(
                                          "images/treinador.jpg",
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
                                              "Johann Schatz",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: screenMedia.width * 0.065
                                              ),
                                            ),
                                            Text(
                                              "Professional trainer",
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
                                                  "83k",
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
                                // RONNIE
                                nextScreen(context, const TreinoRonnie());
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(top: 0, left: 20, right: 8),
                                child: Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Image.asset(
                                        "images/treinador_ronnie.png",
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
                                              "Ronnie Coleman",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: screenMedia.width * 0.065
                                              ),
                                            ),
                                            Text(
                                              "The best of all time",
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
                                                    "291k",
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
                                // BREIER
                                nextScreen(context, const TreinoBreier());
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(top: 0, left: 20, right: 8),
                                child: Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Image.asset(
                                        "images/breier.jpg",
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
                                              "Breier",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: screenMedia.width * 0.065
                                              ),
                                            ),
                                            Text(
                                              "Professional aesthetic",
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
                                                    "137k",
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
                                // ZYZZ
                                nextScreen(context, const TreinoZyzz());
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(top: 0, left: 20, right: 8),
                                child: Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Image.asset(
                                        "images/zyzz.jpg",
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
                                              "Eterno Zyzz",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: screenMedia.width * 0.065
                                              ),
                                            ),
                                            Text(
                                              "Master of aesthetic",
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
                                                    "451k",
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
                                // EDDIE
                                nextScreen(context, const TreinoEddie());
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(top: 0, left: 20, right: 8),
                                child: Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Image.asset(
                                        "images/eddie.jpg",
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
                                              "Eddie Hall",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: screenMedia.width * 0.065
                                              ),
                                            ),
                                            Text(
                                              "The beast",
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
                                                    "281k",
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
                                // JAY
                                nextScreen(context, const TreinoJay());
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(top: 0, left: 20, right: 8),
                                child: Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Image.asset(
                                        "images/jay.jpg",
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
                                              "Jay Cutler",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: screenMedia.width * 0.065
                                              ),
                                            ),
                                            Text(
                                              "Quad Stomp",
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
                                                    "300k",
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
                                // ARNOLD 
                                nextScreen(context, const TreinoArnold());
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(top: 0, left: 20, right: 8),
                                child: Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Image.asset(
                                        "images/arnold.jpg",
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
                                              "Daddy Arnold",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: screenMedia.width * 0.065
                                              ),
                                            ),
                                            Text(
                                              "Mr. Olympia",
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
                                                    "999k",
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
                                // BAMBAM 
                                nextScreen(context, const TreinoBambam());
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(top: 0, left: 20, right: 8),
                                child: Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Image.asset(
                                        "images/bambam.jpg",
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
                                              "Kleber Bambam",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: screenMedia.width * 0.065
                                              ),
                                            ),
                                            Text(
                                              "Monster Trainer",
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
                                                    "126k",
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
                              padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
                              child: SlideAction(
                                borderRadius: 12,
                                elevation: 0,
                                innerColor: Colors.blue.shade400,
                                outerColor: Colors.blue.shade200,
                                sliderButtonIcon: const Icon( 
                                  Icons.lock_open,
                                  color: Colors.white,
                                ),
                                text: 'Deslize para desbloquear',
                                textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                                onSubmit: () {
                                  Future.delayed(const Duration(seconds: 1));
                                  showDialog(
                                    barrierDismissible: false,
                                    context: context, 
                                    builder: (context) {
                                      return AlertDialog(
                                        title: const Text("Desbloquear"),
                                        content: const Text("Você tem certeza de que está pronto para o próximo nível?"),
                                        actions: [
                                          IconButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            }, 
                                            icon: const Icon(Icons.cancel, color: Colors.red,)
                                          ),
                                          IconButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                              nextScreenReplace(context, const WorkoutPage2());
                                            }, 
                                            icon: const Icon(Icons.done, color: Colors.green,)
                                          ),
                                        ],
                                      );
                                  });
                                  //NOTIFICAÇÃO INSTANTÂNEA: 

                                  /*
                                  await service.showNotification(
                                    id: 0, 
                                    title: 'Notificação teste', 
                                    body: 'Tetse realizado com sucesso',
                                  );
                                  */

                                  /*NOTIFICAÇÃO AGENDADA:

                                  await service.showScheduleNotification(
                                    id: 0, 
                                    title: 'Notificação teste', 
                                    body: 'Tetse realizado com sucesso',
                                    seconds: 5,
                                  );*/

                                  /*NOTIFICAÇÃO QUE REDIRECIONA A UMA TELA APÓS O CLICK

                                  await service.showNotificationWithPayLoad(
                                    id: 0, 
                                    title: 'Notificação teste', 
                                    body: 'Tetse realizado com sucesso',
                                    payLoad: 'Navegação payLoad'
                                  );*/

                                },
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