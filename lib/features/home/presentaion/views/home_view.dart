import 'package:bookly_app/features/home/presentaion/views/widgets/custom_appbar.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context),
      body: const HomeViewBody(),
    );
  }
}
