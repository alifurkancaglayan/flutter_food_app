import 'package:flutter/material.dart';

import 'package:flutter_food_app/screens/home/components/category_list.dart';
import 'package:flutter_food_app/screens/home/components/discount_card.dart';
import 'package:flutter_food_app/screens/home/components/item_list.dart';

import '../../../components/search_box.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchBox(
          onChanged: (value) {},
        ),
        const CategoryList(),
        const ItemList(),
        const DiscountCard(),
      ],
    );
  }
}
