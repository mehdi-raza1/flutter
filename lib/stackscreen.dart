import 'package:flutter/material.dart';

class StackScreen extends StatefulWidget {
  const StackScreen({super.key});

  @override
  State<StackScreen> createState() => _StackScreenState();
}

class _StackScreenState extends State<StackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:[
          // background Container
          SizedBox(
            width: double.infinity,
            height: 192,
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  width: double.infinity,
                  height: 140,
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(14)
                  ),
                ),
                const Positioned(
                  top: 80,
                  left: 120,
                  child: CircleAvatar(
                    radius: 55,
                    backgroundColor: Colors.purple,
                  ),
                )
              ],
            ),
          ),

          const Text("Ali Asad Sayani", style: TextStyle(
           fontWeight: FontWeight.w600,
           color: Colors.black,
           fontSize: 18
          ),),

          const Text("Junior Flutter Developer", style: TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.black,
              fontSize: 14
          ),)
        ]
      ),
    );
  }
}
