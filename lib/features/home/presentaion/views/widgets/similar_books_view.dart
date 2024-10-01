import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentaion/managers/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SimilarBoooksView extends StatelessWidget {
  const SimilarBoooksView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksCubitState>(
        builder: (context, state) {
      if (state is SimilarBooksCubitSuccess) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.23,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.similarBooks.length,
              itemBuilder: (context, index) {
                return AspectRatio(
                  aspectRatio: 2.8/ 4,
                  child: GestureDetector(
                    onTap: () => GoRouter.of(context).push(
                      AppRouter.bookDetailsView,
                      extra: state.similarBooks[index],
                    ),
                    child: Container(
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                            state.similarBooks[index].volumeInfo.imageLinks!
                                .thumbnail,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }),
        );
      } else {
        return const CustomLoadingIndicator();
      }
    });
  }
}
