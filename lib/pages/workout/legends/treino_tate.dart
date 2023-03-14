import 'package:flutter/material.dart';
import 'package:flutter_project/pages/workout/list_class.dart';
import 'package:fluttertoast/fluttertoast.dart';

class TreinoTate extends StatefulWidget {
  const TreinoTate({super.key});

  @override
  State<TreinoTate> createState() => _TreinoTateState();
}

class _TreinoTateState extends State<TreinoTate> {
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
                        "images/tate.jpg",
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
                          "Andrew Tate",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: screenMedia.width * 0.057
                          ),
                        ),
                        Text(
                          "Multimillionaire",
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
                              "1.6 M",
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
                            '#2',
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: screenMedia.width * 0.07
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text('Money'),
                          const Text("Owner"),
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
                            '50000+',
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: screenMedia.width * 0.07
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text('Vidas'),
                          const Text("Mudadas")
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
                            '1000',
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
                    itemCount: mostPopularTate.length,
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
                                mostPopularTate[index].classImage,
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
                                      '${mostPopularTate[index].className} - ${mostPopularTate[index].classDifficult}',
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
                                        mostPopularTate[index].isFav 
                                        ? GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              mostPopularTate[index].isFav = false;
                                            });

                                            showSnackBar(context, mostPopularTate[index], false);

                                          },
                                          child: Icon(
                                            Icons.favorite,
                                            color: Colors.red.shade400,
                                          ),
                                        )
                                        :GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              mostPopularTate[index].isFav = true;
                                            });

                                            showSnackBar(context, mostPopularTate[index], true);

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
                ...allClassesTate.map((e) {
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