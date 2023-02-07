import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:hackathon/utils/colors.dart';
import 'package:hackathon/utils/images.dart';
import 'package:gap/gap.dart';
import 'package:hackathon/utils/utils.dart';
import 'package:hackathon/views/Signup.dart';
import 'package:hackathon/views/login.dart';
import 'package:hackathon/views/navigation_screen.dart';
import 'package:hackathon/widget/round_button.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
      final formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;


  // registerUser() async {
  //   try {
  //     final credential =
  //         await FirebaseAuth.instance.createUserWithEmailAndPassword(
  //       email: emailController.text,
  //       password: passwordController.text,
  //     );
  //   } on FirebaseAuthException catch (e) {
  //     if (e.code == 'weak-password') {
  //       print('The password provided is too weak.');
  //     } else if (e.code == 'email-already-in-use') {
  //       print('The account already exists for that email.');
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    const Gap(20),
                    GestureDetector(
                        onTap: () {
                          Navigator.pop(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignupPage()));
                        },
                        child: images.backBtn),
                  ],
                ),
                const Gap(10),
                Row(
                  children: [
                    images.plantify,
                  ],
                ),
                Gap(20),
                Row(
                  children: [
                    Text(
                      'SignUp',
                      style: TextStyle(fontSize: 40, color: colors.themeColor),
                    ),
                  ],
                ),
                Row(
                  children: [
                    images.loginData,
                  ],
                ),
                const Gap(40),
                Row(
                  children: [
                    Text(
                      'Username/email',
                      style: TextStyle(color: colors.grey),
                    ),
                  ],
                ),
                Gap(10),
                Form(
                  key: formKey,
                  child: Column(children: [
                      TextFormField(
                        
                    decoration: InputDecoration(
                      hintText: 'Masukkan Email',
                      hintStyle: TextStyle(color: Color(0xff004A61)),
                      prefixIcon: Icon(Icons.email),
                      fillColor: Color(0xffE6E8EB),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    controller: emailController,
                  ),
                
                Gap(30),
                Row(
                  children: [
                    Text(
                      'Password',
                      style: TextStyle(color: colors.grey),
                    ),
                  ],
                ),
                const Gap(10),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Masukkan Password',
                    hintStyle: TextStyle(color: Color(0xff004A61)),
                    prefixIcon: Icon(Icons.lock_open_rounded),
                    fillColor: Color(0xffE6E8EB),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  controller: passwordController,
                ),
          ],),
                ),
                
                Gap(10),
                Gap(100),
                RoundButton(
                   ontap: (){
        
                    if (formKey.currentState!.validate()) {
                    auth.createUserWithEmailAndPassword(
                            email: emailController.text.toString(),
                            password: passwordController.text.toString())
                        .then((value) {}).onError((error, stackTrace) {
                      Utils().toastMessage(error.toString());
                    });
                  }
                },
                  
                  title: 'SignUp'),
        
        
                   Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("already have an account "),
                    Gap(10),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()));
                        },
                        child: Text("Login ",
                            style: TextStyle(
                              color: colors.themeColor,
                            ))),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
