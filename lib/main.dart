import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/firebase_options.dart';
import 'package:hackathon/views/Signup.dart';
import 'package:hackathon/views/awal.dart';
import 'package:hackathon/views/checkout.dart';
import 'package:hackathon/views/description.dart';
import 'package:hackathon/views/home_page.dart';
import 'package:hackathon/views/login.dart';
import 'package:hackathon/views/navigation_screen.dart';
import 'package:hackathon/views/order_done.dart';

void main() 

   async{
    WidgetsFlutterBinding.ensureInitialized();
     await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,);
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home:Awal(),    );
  }
}
