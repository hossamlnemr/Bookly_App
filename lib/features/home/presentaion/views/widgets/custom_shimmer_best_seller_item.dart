import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

class CustomShimmerBestSellerItem extends StatelessWidget {
  const CustomShimmerBestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 135,
      child: Card(
        color: kPrimaryColor,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.8 / 4,
              child: Container(
                margin: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: shimmerColor,
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      height: 20,
                      width: 30,
                      color: shimmerColor,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 20,
                    width: 150,
                    color: shimmerColor,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10),
                        height: 21,
                        width: 150,
                        color: shimmerColor,
                      ),
                      const Spacer(),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
