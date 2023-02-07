import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:hackathon/utils/colors.dart';
import 'package:hackathon/utils/images.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hackathon/views/awal.dart';
import 'package:hackathon/views/description.dart';
import 'package:hackathon/widget/home_list.dart';
import 'package:hackathon/widget/all_products.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final formKey = GlobalKey<FormState>();

  // incrementCounter(index) {
  //   setState(() {
  //     products_images[index]['peperomia_price']++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 5,
        child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(children: [
                Gap(20),
                Row(
                  children: [
                    images.plantify,
                    Gap(60),
                    images.notifiIcn,
                    Gap(10),
                    images.filterIcn,
                  ],
                ),
                Gap(20),
                images.banner2,
                // Stack(
                //   children: [images.banner,
                //     Padding(
                //       padding: const EdgeInsets.only(left: 20,top: 40),
                //       child: Column(
                //         mainAxisAlignment: MainAxisAlignment.start,
                //         crossAxisAlignment: CrossAxisAlignment.start,
                //         children: [
                //                 Text("There's a plant ",style: TextStyle(fontSize: 24,color: Color(0xff002140),fontWeight: FontWeight.bold),),
                //                     Text("For Every one ",style: TextStyle(fontSize: 24,color: Color(0xff002140),fontWeight: FontWeight.bold)),

                //     Gap(30),
                //     Text('Get Your 1st Plant',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                //     Text('@ 40% Off',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold))

                //       ],),
                //     ),

                //   ],),

                Gap(20),

                Row(
                  children: [
                    Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'search',
                          hintStyle: TextStyle(color: Color(0xff004A61)),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          suffixIcon: Icon(
                            FontAwesomeIcons.barcode,
                            color: Colors.black,
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black12),
                              borderRadius: BorderRadius.circular(30)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black12),
                              borderRadius: BorderRadius.circular(30)),
                        ),
                      ),
                    ),
                    Gap(10),
                    images.setting
                  ],
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height * .063,
                  child: AppBar(
                    backgroundColor: Colors.white,
                    elevation: 0,
                    bottom: TabBar(
                        isScrollable: true,
                        labelPadding: EdgeInsets.only(left: 25),
                        indicatorColor: Colors.black,
                        tabs: [
                          Tab(
                              child: Text("Top Pick",
                                  style: TextStyle(color: colors.themeColor))),
                          Tab(
                              child: Text(
                            "Indoor",
                            style: TextStyle(color: Colors.black),
                          )),
                          Tab(
                              child: Text("Outdoor",
                                  style: TextStyle(color: Colors.black))),
                          Tab(
                              child: Text("Seeds",
                                  style: TextStyle(color: Colors.black))),
                          Tab(
                              child: Text("Planters",
                                  style: TextStyle(color: Colors.black))),
                        ]),
                  ),
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height * 3,
                  child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: products_images.length,
                      itemBuilder: (BuildContext context, index) {
                        return InkWell(
                          onTap: () {
                             },
                          child: HomeList(
                            bgImage: products_images[index]['product_container'],
                            product: products_images[index]['product_pot'],
                            air: products_images[index]['air_purifer'],
                            data: products_images[index]['peperomia_data'],
                            cart: products_images[index]['peperomia_cart'],
                            price: products_images[index]['peperomia_price'],
                          ),
                        );
                      }),
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
