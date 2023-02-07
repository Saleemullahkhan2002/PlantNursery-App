import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hackathon/utils/images.dart';
import 'package:hackathon/views/login.dart';
import 'package:hackathon/widget/round_button.dart';

class Awal extends StatelessWidget {
  const Awal({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          Column(children: [
         images.greenBox,
          ],),

         const Gap(20),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 20),
           child: Column(
             children: [
               Row(
                 children: [
                   images.startText,
                 ],
               ),
               Gap(10),
               Row(
                 children: [
                   images.startData,
                 ],
               ),
           const    Gap(110),
               RoundButton(
                ontap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage())
                  );
                },
                title: "START" ),
               
             ],
           ), 
         ),
    
        ],),
      ),
    );
  }
}
