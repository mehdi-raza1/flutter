import 'package:flutter/material.dart';

class RowScreen extends StatefulWidget {
  const RowScreen({super.key});

  @override
  State<RowScreen> createState() => _RowScreenState();
}

class _RowScreenState extends State<RowScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row Screen"),
      ),
      body: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            color: Colors.red,
          ),
          Container(
            width: 80,
            height: 40,
            color: Colors.green,
          ),
          Container(
            width: 80,
            height: 80,
            color: Colors.purple,
          )
        ],
      ),
    );
  }
}
