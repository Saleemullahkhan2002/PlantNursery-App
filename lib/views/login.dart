import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/utils/colors.dart';
import 'package:hackathon/utils/images.dart';
import 'package:gap/gap.dart';
import 'package:hackathon/utils/utils.dart';
import 'package:hackathon/views/Signup.dart';
import 'package:hackathon/views/navigation_screen.dart';
import 'package:hackathon/widget/round_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
    final formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
  
  void login() {
    auth
        .signInWithEmailAndPassword(
            email: emailController.text,
            password: passwordController.text.toString())
        .then((value) {
      Utils().toastMessage(value.user!.email.toString());
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => NavigatorPage()));
    }).onError((error, stackTrace) {
      debugPrint(error.toString());
      Utils().toastMessage(error.toString());
    });
  }




  // void login() {
  //   auth
  //       .signInWithEmailAndPassword(
  //           email: emailController.text,
  //           password: passwordController.text.toString())
  //       .then((value) {
  //     Navigator.push(
  //         context, MaterialPageRoute(builder: (context) => NavigatorPage()));
  //   }).onError((error, stackTrace) {
  //     debugPrint(error.toString());
  //   });
  // }

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
                                  builder: (context) => const LoginPage()));
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
                      'Login',
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
                  key:formKey ,
                  child: Column(children: [

  TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Masukkan Email',
                    hintStyle: TextStyle(color: Color(0xff004A61)),
                    prefixIcon: Icon(Icons.email),
                    fillColor: Colors.grey[50],
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
                    fillColor: Colors.grey[50],
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

                ],)),
              
                Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't Have any Account  "),
                    Gap(10),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignupPage()));
                        },
                        child: Text("Sign Up? ",
                            style: TextStyle(
                              color: colors.themeColor,
                            ))),
                  ],
                ),
                Gap(100),
                RoundButton(
                   ontap: () {
                      if (formKey.currentState!.validate()) {
                        login();
                      }
                    },
                  title: 'Login')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
