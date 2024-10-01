import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      
      slivers: [
        
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.28,
                  child: const FeatureBooksView(),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'Best seller',
                  style: Styles.textStyle20,
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
        const SliverFillRemaining(
          
          child: BestSellerListViewItems(),
        ),
      ],
    );
  }
}
