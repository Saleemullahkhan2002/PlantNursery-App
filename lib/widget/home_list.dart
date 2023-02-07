import 'package:flutter/material.dart';

class HomeList extends StatelessWidget {
  final String bgImage;
  final String product;
  final String air;
  final String data;
  final int price;
  final String cart;

  HomeList({
    super.key,
    required this.bgImage,
    required this.product,
    required this.air,
    required this.data,
    required this.cart,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Image.asset(bgImage),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 210),
          child: Image.asset(
            product,
            width: 160,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50, left: 20),
          child: Image.asset(air),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 80, left: 20),
          child: Image.asset(data),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 140, left: 20),
          child: Text(" \$${price}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold), ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 130, left: 160),
          child: Image.asset(cart),
        ),
      ]),
    );
  }
}
