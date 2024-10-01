import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentaion/managers/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/book_details_view_body.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/custom_book_details_view_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  final BookModel bookModel;
  const BookDetailsView({super.key, required this.bookModel});

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<SimilarBooksCubit>(context)
        .fetchSimilarBooksCubit(widget.bookModel.volumeInfo.categories![0]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customBookDetailsViewAppbar(context),
      body: BookDetailsViewBody(
        book: widget.bookModel,
      ),
    );
  }
}
