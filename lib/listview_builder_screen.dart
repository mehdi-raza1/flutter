import 'package:fastpro/reuseable_widgets.dart';
import 'package:flutter/material.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({super.key});

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  List names = ["Ali Asad", "Ehtisham", "Mehdi", "Tariq", "Basit"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top:true,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("ListView Builder Screen"),
        ),

        body: ListView.builder(
          itemCount: names.length,
            itemBuilder: (context, index) {
              return kuchbhi(
                  kuchbhinaam: names[index],
                  kuchbhitasver: "");
            },),
      ),
    );
  }
}


