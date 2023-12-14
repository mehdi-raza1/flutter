import 'package:fastpro/listview_builder_screen.dart';
import 'package:fastpro/reuseable_screen.dart';
import 'package:fastpro/stackscreen.dart';
import 'package:flutter/material.dart';

import 'form_screen.dart';

void main() {
  runApp(const AsadApp());
}

class AsadApp extends StatelessWidget {
  const AsadApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewScreen(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
      backgroundColor: const Color(0xFF296700),
      title: const Text("Asad App",style: TextStyle(
        fontSize: 22,
        color: Colors.blue,
        fontWeight: FontWeight.normal
      ),),
        leading: Builder(builder: (context) => IconButton(onPressed: (){
          Scaffold.of(context).openDrawer();
        }, icon: const Icon(Icons.category)),),
        actions: const[
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.blue,
          ),
          SizedBox(
            width: 6,
          )
        ],
      ),
      drawer: Drawer(
        width: 260,
        backgroundColor: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image Container with User Details
            Container(
              width: 260,
              height: 220,
              decoration: BoxDecoration(
                color: Colors.purple,
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.darken),
                    fit: BoxFit.fill,
                    image: const AssetImage('images/myimg.jpg'))
              ),
              child: Container(
                margin: const EdgeInsets.only(left: 14,top: 140),
                child: const Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage('https://cdn3d.iconscout.com/3d/premium/thumb/young-man-5748694-4800737.png?f=webp'),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Ali Asad", style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white
                        ),),
                        Text("aliasad@gmail.com", style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.white
                        ),)
                      ],
                    )
                  ],
                ),
              ),
            ),
            // User App Settings
             ListTile(
              leading: const Icon(Icons.notification_add_rounded, color: Colors.white,),
              title: const Text("Notifications", style: TextStyle(color: Colors.white),),
              subtitle: Text("Manage Your Notifications Here", style: TextStyle(color: Colors.grey.shade300, fontSize: 12),),
            ),
            ListTile(
              leading: const Icon(Icons.person, color: Colors.white,),
              title: const Text("Profile", style: TextStyle(color: Colors.white),),
              subtitle: Text("Gonna Change your bio ", style: TextStyle(color: Colors.grey.shade300, fontSize: 12),),
            ),
            ListTile(
              leading: const Icon(Icons.settings, color: Colors.white,),
              title: const Text("Settings", style: TextStyle(color: Colors.white),),
              subtitle: Text("Twick your App here", style: TextStyle(color: Colors.grey.shade300, fontSize: 12),),
            ),
            ListTile(
              leading: const Icon(Icons.privacy_tip, color: Colors.white,),
              title: const Text("Privacy", style: TextStyle(color: Colors.white),),
              subtitle: Text("Read Privacy Policy for the app", style: TextStyle(color: Colors.grey.shade300, fontSize: 12),),
            )
          ],
        ),
      ),
      body: Center(
        child: Container(
          width: 150,
          height: 150,

          decoration: BoxDecoration(
              color: Colors.red,
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(20),
              topLeft: Radius.circular(20)
            ),
            border: Border.all(color: Colors.black, width: 2),
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                spreadRadius: 2,
                blurRadius: 10,
                offset: Offset(10, 10)
              )
            ],
            image: DecorationImage(
              colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.darken),
                fit: BoxFit.cover,
                image: const AssetImage('images/myimg.jpg'))
          ),
          child: const Center(child: Text("Muhammad Asim",style: TextStyle(color: Colors.white),),),
        ),
      ),
    );
  }
}



