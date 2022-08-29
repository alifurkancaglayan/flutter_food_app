import 'package:flutter/material.dart';
import 'package:flutter_food_app/constants.dart';
import 'package:flutter_food_app/screens/details/components/body.dart';
import 'package:flutter_food_app/screens/details/components/details_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(context),
      body: Body(),
    );
  }
}
