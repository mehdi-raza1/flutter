import 'package:fastpro/reuseable_widgets.dart';
import 'package:flutter/material.dart';

class ReuseableScreen extends StatefulWidget {
  const ReuseableScreen({super.key});

  @override
  State<ReuseableScreen> createState() => _ReuseableScreenState();
}
 
class _ReuseableScreenState extends State<ReuseableScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  Column(
        children: [
          EhtishamContainer(
            userText: "Ehtisham",
            myColor: Colors.black,
          ),

          EhtishamContainer(
            userText: "Tariq",
            myColor: Colors.green,
          ),

          EhtishamContainer(
            userText: "Ali Asad",
            myColor: Colors.blue,
          ),
        ],
      )
    );
  }
}



