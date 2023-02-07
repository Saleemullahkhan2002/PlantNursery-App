import 'package:flutter/material.dart';
import 'package:hackathon/utils/colors.dart';
import 'package:hackathon/utils/images.dart';
import 'package:gap/gap.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({super.key});

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  int counter1 = 0;
  int counter2 = 0;
  int counter3 = 0;
  int total = 1;

  int x1 = 350;
  int x2 = 400;
  int x3 = 260;

  int y = 1;
  incrementCounter1() {
    setState(() {
      counter1++;

      if (counter1 >= 1) {}
    });
  }

  incrementCounter2() {
    setState(() {
      counter2++;

      if (counter2 >= 1) {}
    });
  }

  incrementCounter3() {
    setState(() {
      counter3++;

      if (counter3 >= 1) {}
    });
  }

  decrement1() {
    setState(() {
      if (counter1 <= 1) {
        return setState(() {
          (counter1);
        });
      }
      counter1--;
    });
  }

  decrement2() {
    setState(() {
      if (counter2 <= 1) {
        return setState(() {
          (counter2);
        });
      }
      counter2--;
    });
  }

  decrement3() {
    setState(() {
      if (counter3 <= 1) {
        return setState(() {
          (counter3);
        });
      }
      counter3--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(


        drawer: Drawer(child:
        Container(
height: MediaQuery.of(context).size.height*1,
          decoration: BoxDecoration(

            color: colors.themeColor
          ),

          child:Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
Image.asset('assets/images/shop.png'),
Gap(90),
            Text('Get The Dirt',style: TextStyle(color: Colors.white,fontSize: 25),),
            

            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
              
                    decoration: InputDecoration(
                      hintText: 'Enter Your Email',
                      hintStyle: TextStyle(color: Colors.white),
                      fillColor: colors.themeColor,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                          // borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(8)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          ),
                    ),
              ),
            ),
            Gap(40),
Text('FAQ',style: TextStyle(fontSize: 20,color: Colors.white),),
Gap(10),

Text('About Us',style: TextStyle(fontSize: 20,color: Colors.white),),
Gap(10),
Text('Contact Us',style: TextStyle(fontSize: 20,color: Colors.white),)

          ],)
            ,
          ),
        ),
        
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Gap(10),
                Row(
                  children: [
                    images.plantify,
                    Gap(50),
                    Icon(Icons.search),
                    Gap(10),
                  //  images.setting        
                           ],
                ),
                Gap(20),
                Row(
                  children: [
                    Text(
                      'Your Bag',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: colors.themeColor),
                    ),
                  ],
                ),
                Stack(children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 90),
                    child: Image.asset('assets/images/group1.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25, left: 270),
                    child: Image.asset('assets/images/save.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25, left: 300),
                    child: Text(
                      '\$ ${counter1 * x1}',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 45, left: 100),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            incrementCounter1();
                          },
                          child: Image.asset('assets/images/plus.png'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 7),
                          child: Text(
                            '$counter1',
                            style:
                                TextStyle(color: colors.themeColor, fontSize: 17),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            decrement1();
                          },
                          child: Image.asset('assets/images/minus.png'),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 48, left: 200),
                    child: Image.asset('assets/images/dustbin.png'),
                  ),
                ]),
                Gap(30),
                Stack(children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 90),
                    child: Image.asset('assets/images/group2.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25, left: 270),
                    child: Image.asset('assets/images/save.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25, left: 300),
                    child: Text(
                      '\$ ${counter2 * x2}',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 45, left: 100),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            incrementCounter2();
                          },
                          child: Image.asset('assets/images/plus.png'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 7),
                          child: Text(
                            '$counter2',
                            style:
                                TextStyle(color: colors.themeColor, fontSize: 17),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            decrement2();
                          },
                          child: Image.asset('assets/images/minus.png'),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 48, left: 200),
                    child: Image.asset('assets/images/dustbin.png'),
                  ),
                ]),
                Gap(30),
                Stack(children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 90),
                    child: Image.asset('assets/images/group3.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25, left: 270),
                    child: Image.asset('assets/images/save.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25, left: 300),
                    child: Text(
                      '\$ ${counter3 * x3}',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 45, left: 100),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            incrementCounter3();
                          },
                          child: Image.asset('assets/images/plus.png'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 7),
                          child: Text(
                            '$counter3',
                            style:
                                TextStyle(color: colors.themeColor, fontSize: 17),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            decrement3();
                          },
                          child: Image.asset('assets/images/minus.png'),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 48, left: 200),
                    child: Image.asset('assets/images/dustbin.png'),
                  ),
                ]),
                Gap(10),
        Image.asset('assets/images/delivery.png'),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
        
              Text('Total',style: TextStyle(fontSize: 40, color: Colors.black,fontWeight: FontWeight.bold ),),
               Text( ' \$${counter1*x1 +counter2*x2+counter3*x3 }',style: TextStyle(fontSize: 40, color: Colors.black)),
             ],
           ),
        Gap(20),
           Image.asset('assets/images/group4.png'),
        
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
