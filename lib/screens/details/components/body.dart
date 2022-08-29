import 'package:flutter/material.dart';
import 'package:flutter_food_app/screens/details/components/item_image.dart';
import 'package:flutter_food_app/screens/details/components/order_button.dart';
import 'package:flutter_food_app/screens/details/components/title_price_rating.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ItemImage(
          imgSrc: "assets/images/burger.png",
        ),
        Expanded(
          child: ItemInfo(),
        ),
      ],
    );
  }
}

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        ),
      ),
      child: Column(
        children: [
          shopeName("McDonald's"),
          TitlePriceRating(
            name: "Cheese Burger",
            numOfRevives: 24,
            price: 15,
            rating: 4,
            onRatingChanged: (rating) {},
          ),
          const Text(
            "Nowadays, making printed materials have become fast, easy and simple. If you want your promotional material to be an eye-catching object, you should make it colored. By way of using inkjet printer this is not hard to make. An inkjet printer is any printer that places extremely small droplets of ink onto paper to create an image.",
            style: TextStyle(
              height: 1.5,
            ),
          ),
          SizedBox(
            height: size.height * 0.06,
          ),
          OrderButton(
            size: size,
            press: () {},
          ),
        ],
      ),
    );
  }

  Row shopeName(String name) {
    return Row(
      children: [
        const Icon(
          Icons.location_on,
          color: ksecondaryColor,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(name),
      ],
    );
  }
}
