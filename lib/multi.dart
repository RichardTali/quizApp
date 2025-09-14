import 'package:flutter/material.dart';

class MultiScreen extends StatefulWidget {
  const MultiScreen({super.key});

  @override
  State<MultiScreen> createState() => _MultiState();
}

class _MultiState extends State<MultiScreen> {
  double _sliderValue = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Multip')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            child: Column(
              children: [
                const Text(
                  'PromptQuiz',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Ingresa el tema que desee',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Cantidad de preguntas'),
                    Slider(
                      min: 1,
                      max: 20,
                      divisions: 19,
                      value: _sliderValue,

                      onChanged: (value) {
                        setState(() {
                          _sliderValue = value;
                        });
                      },
                    ),
                    Text('Seleccionado: ${_sliderValue.round()} preguntas'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
