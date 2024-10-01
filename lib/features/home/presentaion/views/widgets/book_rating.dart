import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  final num rating;
  final num count;
  const BookRating(
      {super.key,
      this.mainAxisAlignment = MainAxisAlignment.spaceBetween,
      required this.rating,
      required this.count});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          Icons.star_rate_rounded,
          color: Colors.yellow,
          size: 25,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          rating.toString(),
          style: Styles.textStyle16.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(
          width: 3,
        ),
        Text(
          '($count)',
          style: Styles.textStyle14.copyWith(
            color: const Color.fromARGB(255, 144, 133, 133),
          ),
        ),
      ],
    );
  }
}
