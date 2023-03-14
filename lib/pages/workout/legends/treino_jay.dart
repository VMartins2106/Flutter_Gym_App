import 'package:flutter_project/pages/workout/list_class.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttertoast/fluttertoast.dart';

class TreinoJay extends StatefulWidget {
  const TreinoJay({super.key});

  @override
  State<TreinoJay> createState() => _TreinoJayState();
}

class _TreinoJayState extends State<TreinoJay> {
  @override
  Widget build(BuildContext context) {

    final screenMedia = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 45, left: 5),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          child: Container(
            margin: const EdgeInsets.only(
              left: 10, 
              right: 10,
            ),
            height: screenMedia.height,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        "images/jay.jpg",
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Jay Cutler",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: screenMedia.width * 0.07
                          ),
                        ),
                        Text(
                          "Olympia owner",
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
                              "899k",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      width: screenMedia.width * 0.3,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '#4',
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: screenMedia.width * 0.07
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text('Olympia'),
                          const Text("Trainer"),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      width: screenMedia.width * 0.3,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '2500+',
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: screenMedia.width * 0.07
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text('Horas'),
                          const Text("Treinadas")
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      width: screenMedia.width * 0.3,
                      height: 95,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '100',
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: screenMedia.width * 0.07
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text('Aulas'),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Mais populares',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: screenMedia.width * 0.05
                  ),
                ),
                Container(
                  height: 140,
                  margin: const EdgeInsets.only(top: 10),
                  alignment: Alignment.centerLeft,
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: mostPopularJay.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(
                          left: 5,
                          right: 5,
                        ),
                        width: screenMedia.width * 0.6,
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                mostPopularJay[index].classImage,
                                width: screenMedia.width * 0.6,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      '${mostPopularJay[index].className} - ${mostPopularJay[index].classDifficult}',
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        mostPopularJay[index].isFav 
                                        ? GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              mostPopularJay[index].isFav = false;
                                            });

                                            showSnackBar(context, mostPopularJay[index], false);

                                          },
                                          child: Icon(
                                            Icons.favorite,
                                            color: Colors.red.shade400,
                                          ),
                                        )
                                        :GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              mostPopularJay[index].isFav = true;
                                            });

                                            showSnackBar(context, mostPopularJay[index], true);

                                          },
                                          child: const Icon(
                                            Icons.favorite_outline_rounded,
                                            color: Colors.white,
                                          ),
                                        ),
                                        const Spacer(),
                                        const Text(
                                          'View',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const Icon(
                                          Icons.keyboard_arrow_right_rounded,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Aulas',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: screenMedia.width * 0.05
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ...allClassesJay.map((e) {
                  return Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Fluttertoast.showToast(
                          msg: 'CLICADO EM ${e}', 
                          toastLength: Toast.LENGTH_SHORT,
                          backgroundColor: Colors.grey,
                          fontSize: 17,
                        );
                      },
                      child: Container(
                        width: screenMedia.width * 0.9,
                        margin: const EdgeInsets.only(left: 5, right: 5),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                e.classImage,
                                width: screenMedia.width * 0.9,
                                height: 120,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              height: 120,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Text(
                                      '${e.className} - ${e.classDifficult}',
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold  
                                        ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Row(
                                      children: [
                                        e.isFav 
                                        ? GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            e.isFav = false;
                                          });

                                          showSnackBar(context, e, false);

                                        },
                                        child: Icon(
                                          Icons.favorite,
                                          color: Colors.red.shade400,
                                        ),
                                      )
                                      :GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            e.isFav = true;
                                          });

                                          showSnackBar(context, e, true);

                                        },
                                        child: const Icon(
                                          Icons.favorite_outline_rounded,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const Spacer(),
                                      const Text(
                                        'View',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const Icon(
                                        Icons.keyboard_arrow_right_rounded,
                                        color: Colors.white,
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
                  );
                })
              ],
            ),
          ),
        ),
      ),
    );
  }

  void showSnackBar(BuildContext context, ClassList e, bool liked) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            liked ? Icon(
              Icons.favorite_outline_rounded,
              color: Colors.red.shade400,
            ) : const Icon(Icons.favorite_outline_rounded, color: Colors.white,),
            const SizedBox(
              width: 5,
            ),
            liked ? Text(
              '${e.className} - ${e.classDifficult} curtido',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ) : Text(
              '${e.className} - ${e.classDifficult} descurtido',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}