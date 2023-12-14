import 'package:flutter/material.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          SizedBox(
            height: 60,
          ),

          Center(
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.blue,
              backgroundImage: AssetImage('images/myimg.jpg'),
            ),
          ),

          SizedBox(
            height: 20,
          ),

          Text("John Doe", style: TextStyle(
            fontWeight: FontWeight.w900, 
            fontSize: 22
          ),),

          Text("Junior Mobile Application Developer", style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18
          ),),

          SizedBox(
            width: 60,
            child: Divider(
              color: Colors.black,
              thickness: 1,
            ),
          ),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Colors.black,
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.email, color: Colors.white,),
                  SizedBox(
                    width: 8,
                  ),
                  Text("johndoe@gmail.com",style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600
                  ),)
                ],
              ),
            ),
          ),


          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Colors.black,
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.phone, color: Colors.white,),
                  SizedBox(
                    width: 8,
                  ),
                  Text("+92 320 54894653",style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600
                  ),)
                ],
              ),
            ),
          )
        ]
      )
    );
  }
}
