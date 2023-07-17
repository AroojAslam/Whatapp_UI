import 'package:flutter/material.dart';

void main() {
  runApp(const Whatapp_UI());
}

class Whatapp_UI extends StatelessWidget {
  const Whatapp_UI({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4, child: MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('WhatApp '),
        ),
      ),
    )
    );
  }
}

