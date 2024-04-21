import 'package:flutter/material.dart';


class AppelsPage extends StatefulWidget {
  const AppelsPage({super.key});

  @override
  State<AppelsPage> createState() => _AppelsPageState();
}

class _AppelsPageState extends State<AppelsPage> {
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Text("Appels Page",style: TextStyle(fontSize: 30),),
    );
  }
}