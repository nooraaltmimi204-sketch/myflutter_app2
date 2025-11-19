import 'package:flutter/material.dart';
class Twopage extends StatelessWidget {
  final name;
  const Twopage({super.key,required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text('Two page'),),
    body: Center(
      child: Text(name),
    ),
    );
  }
}

