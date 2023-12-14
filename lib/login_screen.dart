import 'package:fastpro/reuseable_widgets.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController userEmail = TextEditingController();
  TextEditingController userPassword = TextEditingController();

  bool isHide = true;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                debugPrint(userEmail.text);
                debugPrint(userPassword.text);
                userEmail.clear();
                userPassword.clear();
              }
            }, child:const Text("Login")))
          ],
        ),
      ),
    );
  }
}
