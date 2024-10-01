import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

class CustomShimmerItem extends StatelessWidget {
  const CustomShimmerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: AspectRatio(
        aspectRatio: 2.8 / 4,
        child: Container(
          margin: const EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: shimmerColor,
          ),
        ),
      ),
    );
  }
}
