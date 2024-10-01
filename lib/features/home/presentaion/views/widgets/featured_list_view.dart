import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/features/home/presentaion/managers/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/custom_shimmer_featured_item.dart';
import 'package:flutter/material.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/cutom_list_view_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeatureBooksView extends StatelessWidget {
  const FeatureBooksView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount:
                state.books.length, // Assuming state.books is a list of books
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  GoRouter.of(context).push(AppRouter.bookDetailsView,
                      extra: state.books[index]);
                },
                child: CustomBookItem(
                  imgUrl: state.books[index].volumeInfo.imageLinks!.thumbnail,
                ),
              ); // Pass the book to the widget
            },
          );
        } else if (state is FeaturedBooksFailure) {
          return Center(
            child: Text(state.errMessage),
          );
        } else {
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10, // Showing 10 shimmer items as a placeholder
            itemBuilder: (BuildContext context, int index) {
              return const CustomShimmerItem();
            },
          );
        }
      },
    );
  }
}
