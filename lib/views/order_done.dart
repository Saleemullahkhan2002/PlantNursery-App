import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hackathon/utils/images.dart';
import 'package:hackathon/widget/round_button.dart';
class OrderDone extends StatefulWidget {
  const OrderDone({super.key});

  @override
  State<OrderDone> createState() => _OrderDoneState();
}

class _OrderDoneState extends State<OrderDone> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
          
            
            children: [
            Gap(20),
                 images.backBtn,
            
                           Stack(children: [
            Image.asset('assets/images/smile.png'),
            
  Padding(
    padding: const EdgeInsets.only(top: 160,left: 100),
    child: images.order,
  )            ,
  
  Padding(
    padding: const EdgeInsets.only(top: 260,left: 110),
    child: Text('Order ID :#293092309',),
  )               ],),
  Row(
  mainAxisAlignment: MainAxisAlignment.center,
    children: [
      images.fl,
    ],
  ),
  Gap(20),
          RoundButton(title: "Successfully Received", ontap:(){})
          ],),
        )
      ),
    );
  }
}
