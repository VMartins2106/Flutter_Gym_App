import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class NutritionPage extends StatefulWidget {
  const NutritionPage({super.key});

  @override
  State<NutritionPage> createState() => _NutritionPageState();
}

class _NutritionPageState extends State<NutritionPage> {

  String dicas = """Selecione uma das opções acima para descobrir qual o melhor plano de dieta para você, pensado pelo nosso grande nutricionista Fábio Giga.""";
  String objetivo = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset("images/giga.jpg",
          width: double.maxFinite,
          height: MediaQuery.of(context).size.height * 0.55,
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.35,
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
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 570, left: 16),
                child: Positioned(
                  top: 500,
                  left: 48,
                  child: Container(
                    width: 360,
                    height: 130,
                    decoration: BoxDecoration(
                      boxShadow:[ 
                        BoxShadow(
                          color: Colors.white..withOpacity(1),
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
              ),
            ],
          ),
          Positioned(
            top: 320,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                boxShadow:[ 
                  BoxShadow(
                    color: Colors.blue.withOpacity(1),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 2),
                  ),
                ],
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(70),
                  topRight: Radius.circular(70),
                  bottomRight: Radius.circular(40),
                  bottomLeft: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 14, left: 0),
                child: Column(
                  children: [
                    Text(
                      " O melhor nutricionista\n   exclusivo para você!",
                      style: TextStyle(
                        color: Colors.blueGrey.shade600,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Text(
                    "Qual é o seu objetivo ?",
                    style: TextStyle(
                      color: Colors.blueGrey.shade600,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.blue),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: const BorderSide(color: Colors.blue)
                                )
                              )
                            ),
                            onPressed: () {
                              setState(() {
                                dicas = """Para ter o melhor proveito de um treino pesado, visando ganhar massa muscular, deve-se ingerir ao longo do dia mais calorias do que você gasta, para seu corpo entender que pode utilizar cada uma delas sem que faltará algo. Não se esqueça de comer carboidratos em abundância, além de beber bastante água e fazer cardio moderado.""";
                                objetivo = 'hipertrofia';
                              });
                            }, 
                            child: const Text("Hipertrofia")
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.blue),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: const BorderSide(color: Colors.blue)
                                )
                              )
                            ),
                            onPressed: () {
                              setState(() {
                                dicas = 'Para o emagrecimento ser eficaz é necessário ingerir menos calorias do que você gasta ao dia, pois assim, seu corpo irá pegar essa porcentagem faltante de estoques de gordura, fazendo com que você perca gordura e, consequentemente, peso. Beber bastante água e maneirar nos carboidratos são essenciais.';
                                objetivo = 'emagrecimento';
                              });
                            }, 
                            child: const Text("Emagrecimento")
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.blue),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: const BorderSide(color: Colors.blue)
                                )
                              )
                            ),
                            onPressed: () {
                              setState(() {
                                dicas = 'Em busca da definição muscular, você deve ter um pequeno défict calórico, ingerindo bastante proteína, pois assim você irá utilizar seu estoque de gordura para repor as calorias faltantes e as proteínas irão lhe-ajudar a manter a massa muscular. Uma forma de aumentar o gasto calórico é com o próprio cardio.';
                                objetivo = 'definicao';
                              });
                            }, 
                            child: const Text("Definição")
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Center(
                        child: Text(
                          dicas,
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                    objetivo == 'hipertrofia' ? Container(
                      decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20),
                            ),
                          ),
                          child: Image.asset('images/hipertrofia.jpg', width: 300 ,height: 160,))
                    : objetivo == 'emagrecimento' ? Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20),
                            ),
                          ),
                          child: Image.asset('images/emagrecimento.jpg', width: 300 ,height: 160,))
                      : objetivo == 'definicao' ? Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20),
                            ),
                          ),
                          child: Image.asset('images/definicao.jpg', width: 300 ,height: 160,))
                        : Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20),),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 50),
                            child: Image.asset('images/confuso.png', width: 300 ,height: 160, ),
                          ),
                        ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}

