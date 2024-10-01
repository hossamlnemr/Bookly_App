import 'package:bookly_app/features/home/presentaion/managers/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/core/widgets/best_seller_item.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/custom_shimmer_best_seller_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListViewItems extends StatelessWidget {
  const BestSellerListViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksCubitState>(
      builder: (context, state) {
        if (state is NewestBooksCubitSuccess) {
          return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: BestSellerItem(book: state.books[index]),
                );
              });
        } else if (state is NewestBooksCubitFailure) {
          return Center(
            child: Text(state.errMessage),
          );
        } else {
          return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: CustomShimmerBestSellerItem(),
                );
              });
        }
      },
    );
  }
}
