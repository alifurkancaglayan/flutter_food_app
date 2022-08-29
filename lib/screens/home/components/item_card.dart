import 'package:flutter/material.dart';
import 'package:flutter_food_app/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemCard extends StatelessWidget {
  final String title;
  final void Function() press;
  final String svgPc;
  final String shopName;
  const ItemCard({
    Key? key,
    required this.title,
    required this.press,
    required this.svgPc,
    required this.shopName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 15, top: 5, bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 4),
            blurRadius: 20,
            color: const Color(0xFFB0CCE1).withOpacity(0.32),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: press,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(15),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: kPrimaryColor.withOpacity(0.20),
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(
                    svgPc,
                    width: size.width * 0.15,
                  ),
                ),
                Text(title),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  shopName,
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
