import 'package:flutter/material.dart';

class AssignmentScreen extends StatefulWidget {
  const AssignmentScreen({super.key});

  @override
  State<AssignmentScreen> createState() => _AssignmentScreenState();
}

class _AssignmentScreenState extends State<AssignmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Assignment"),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Colors.grey.shade400
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),

                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('images/myimg.jpg'),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Ali Asad",style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18
                    ),),
                    SizedBox(
                        width: 160,
                        child: Text("Junior Flutter Developer adsfjlaksjdflkjsajf",overflow: TextOverflow.ellipsis,))
                  ],
                )
              ],
            ),
          ),

          SizedBox(
            width: 60,
            child: Divider(
              color: Colors.black,
              thickness: 2,
            ),
          )
        ],
      ),
    );
  }
}
