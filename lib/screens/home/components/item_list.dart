import 'package:flutter/material.dart';
import 'package:flutter_food_app/screens/details/details_screen.dart';
import 'package:flutter_food_app/screens/home/components/item_card.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ItemCard(
            title: "Burger & Beer",
            svgPc: "assets/icons/burger_beer.svg",
            shopName: "McDonald's",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailsScreen(),
                ),
              );
            },
          ),
          ItemCard(
            title: "Chinees & Noodle",
            svgPc: "assets/icons/chinese_noodles.svg",
            shopName: "Wendys",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailsScreen(),
                ),
              );
            },
          ),
          ItemCard(
            title: "Burger & Beer",
            svgPc: "assets/icons/burger_beer.svg",
            shopName: "McDonald's",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailsScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
