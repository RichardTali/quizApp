import 'package:flutter/material.dart';
import 'package:quizapp/multi.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/logo.png', width: 150, height: 150), 
          SizedBox(height:25),
          Text('Vamos a jugar'),
          SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Introduce tu nombre',
                      border:OutlineInputBorder(),

                    ),
                    
                  ),
                  SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MultiScreen(),
                          ),
                        );
                    },
                     child: Text('Iniciar Juego'),),
                ],
              )),
            )
        ],
      ),
     ),
    );
  }
}
