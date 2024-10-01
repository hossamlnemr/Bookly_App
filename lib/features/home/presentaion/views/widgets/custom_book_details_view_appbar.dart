import 'package:flutter/material.dart';

AppBar customBookDetailsViewAppbar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.transparent,
    leading: Padding(
      padding: const EdgeInsets.only(left: 20),
      child: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.close),
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 20),
        child: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_cart_outlined),
        ),
      ),
    ],
  );
}
