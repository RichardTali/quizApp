import 'package:flutter/material.dart';

class Multi extends StatefulWidget {
  const Multi({super.key});

  @override
  State<Multi> createState() => _MultiState();
}

class _MultiState extends State<Multi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Multip'),

      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('data')
          ],
        ),
      )
    );
  }
}