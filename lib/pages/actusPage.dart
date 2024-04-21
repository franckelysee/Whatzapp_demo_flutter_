import 'package:flutter/material.dart';


class ActusPage extends StatefulWidget {
  const ActusPage({super.key});

  @override
  State<ActusPage> createState() => _ActusPageState();
}

class _ActusPageState extends State<ActusPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(child: Text("Actus Page",style: TextStyle(fontSize: 30),),),
    );
  }
}