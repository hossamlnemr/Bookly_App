import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

PreferredSizeWidget customAppBar(BuildContext context) {
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: Colors.transparent,
    title: Image.asset(
      AppImages.logo,
      height: 100,
      width: 80,
    ),
    actions: [
      IconButton(
        onPressed: () {
          GoRouter.of(context).push(AppRouter.searchView);
        },
        icon: const Icon(Icons.search),
      ),
    ],
  );
}
