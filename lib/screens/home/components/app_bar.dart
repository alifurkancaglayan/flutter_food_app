import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

AppBar homeAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      onPressed: () {},
      icon: SvgPicture.asset("assets/icons/menu.svg"),
    ),
    title: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 90),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(fontWeight: FontWeight.bold),
          children: const [
            TextSpan(
              text: 'Punk',
              style: TextStyle(color: ksecondaryColor),
            ),
            TextSpan(
              text: 'Food',
              style: TextStyle(color: kPrimaryColor),
            ),
          ],
        ),
      ),
    ),
    actions: [
      IconButton(
        icon: SvgPicture.asset("assets/icons/notification.svg"),
        onPressed: () {},
      ),
    ],
  );
}
