import 'package:flutter/material.dart';
import 'package:hackathon/utils/colors.dart';
import 'package:hackathon/utils/images.dart';
import 'package:gap/gap.dart';

class Description extends StatefulWidget {
  const Description({super.key, });
  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  // images.CurvedBox,
        
                  Container(
                      height: 450,
                      width: MediaQuery.of(context).size.width * 1,
                      decoration: BoxDecoration(
                        color: colors.skyBlue,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.elliptical(2600, 1500),
                          bottomLeft: Radius.elliptical(600, 600),
                        ),
                        // border: Border.all(
                        //   width: 3,
                        //   color: Colors.green,
                        //   style: BorderStyle.solid,
                        // ),
                      ),
                      child: Column(
                        children: [],
                      )),
                  Row(
                    children: [
                      images.plantify,
                      Gap(60),
                      images.notifiIcn,
                      Gap(10),
                      images.filterIcn,
                    ],
                  ),
                        Image.asset('assets/images/maskgrp.png'),
        
                  Padding(
                    padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/images/air_purifer.png'),
                        Image.asset('assets/images/rating.png'),
                      ],
                    ),
                  ),
               Padding(
                 padding: const EdgeInsets.only(top: 100,left: 20),
                 child: Image.asset('assets/images/watermelon_peperomia.png'),
               ),
        Padding(
          padding: const EdgeInsets.only(top: 250,left: 30),
          child:   Column(children: [
          
          
          
            Text('price',style: TextStyle(color:  Color(0xff002140)),),
          
            Gap(10),
          
              Text(' \$350',style: TextStyle(fontWeight: FontWeight.bold),),
          
          Gap(30),
          
          Text('Size',style: TextStyle(color: Color(0xff002140)),),
          
          Gap(10),
          
            Text('5''h',style: TextStyle(fontWeight: FontWeight.bold),),
          
            Gap(40),
          
            Image.asset('assets/images/paperomia_cart.png'),
          
          
          
          
          
          
          
          ],),
        ),
        
          Padding(
            padding: const EdgeInsets.only(left: 100,top: 200),
            child: Image.asset('assets/images/large_pot.png',width: 300,),
          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 400,left: 100),
                            child: Image.asset('assets/images/like.png'),
                          ),
        
        
        
                ],
              ),
        
            Image.asset('assets/images/overview.png'),
            Gap(10),
            Image.asset('assets/images/plant_bio.png'),
            Gap(15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                               Gap(15),
            
               Image.asset('assets/images/vdo.png'),
               Gap(15),
                     Image.asset('assets/images/table.png'),
                                  Gap(15),
            
               Image.asset('assets/images/soil.png'),
            
              ],),
            ),
                           Image.asset('assets/images/sinilar.png'),
                             Row(
                               children: [
                                  Gap(30),
                                 Image.asset('assets/images/little_box1.png'),
                                Image.asset('assets/images/little_box2.png'),

                               ],
                             ),
                           Image.asset('assets/images/very_plant.jpg'),


        
            ],
          ),
        ),
      ),
    );
  }
}
