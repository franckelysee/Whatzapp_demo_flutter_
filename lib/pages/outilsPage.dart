import 'package:flutter/material.dart';


class OutilsPage extends StatefulWidget {
  const OutilsPage({super.key});

  @override
  State<OutilsPage> createState() => _OutilsPageState();
}

class _OutilsPageState extends State<OutilsPage> {
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Text("Outils Page",style: TextStyle(fontSize: 30),),
    );
  }
}