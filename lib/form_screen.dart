import 'package:fastpro/login_screen.dart';
import 'package:fastpro/reuseable_widgets.dart';
import 'package:flutter/material.dart';

class FormScreens extends StatefulWidget {
  const FormScreens({super.key});

  @override
  State<FormScreens> createState() => _FormScreensState();
}

class _FormScreensState extends State<FormScreens> {

  TextEditingController userName = TextEditingController();
  TextEditingController userEmail = TextEditingController();
  TextEditingController userPassword = TextEditingController();

  bool isHide = true;

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Screen")
      ),
      body: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyTextField(
              textController: userName,
             label: "Enter Your Name",
             hint: "John Doe",
             icon: const Icon(Icons.person),
              passHide: false,
              errorMsg: "Please Enter Your Name",
            ),
            MyTextField(
              textController: userEmail,
              label: "Enter Your Email",
              hint: "johndoe@gmail.com",
              icon: const Icon(Icons.mail),
              passHide: false,
              errorMsg: "Please Enter Your Email",
            ),
            MyTextField(
              errorMsg: "Enter Your Password",
              textController: userPassword,
              label: "Enter Your Password",
              hint: "123**BA@",
              limiter: true,
              icon: const Icon(Icons.key),
              passHide: isHide==true?true:false,
              passIcon: IconButton(onPressed: (){
                setState(() {
                  isHide = ! isHide;
                  debugPrint("$isHide");
                });
              }, icon: isHide==true?const Icon(Icons.remove_red_eye):const Icon(Icons.panorama_fish_eye)),
            ),

            Center(child: ElevatedButton(onPressed: (){
             if (formKey.currentState!.validate()) {
               debugPrint(userName.text);
               debugPrint(userEmail.text);
               debugPrint(userPassword.text);
               ScaffoldMessenger.of(context).showSnackBar(
                   SnackBar(
                       content: Text("User Email: ${userEmail.text}\nUser Password: ${userPassword.text}")));

               Navigator.push(context,
                   MaterialPageRoute(
                     builder: (context) => const LoginScreen(),));
               userName.clear();
               userEmail.clear();
               userPassword.clear();
             }
            }, child:const Text("Register")))
          ],
        ),
      ),
    );
  }
}

