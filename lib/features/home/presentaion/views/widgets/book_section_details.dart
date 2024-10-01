import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/cutom_list_view_item.dart';
import 'package:flutter/material.dart';

class BookSectionDetails extends StatelessWidget {
  final BookModel book;
  const BookSectionDetails({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.25),
          child: CustomBookItem(
            imgUrl: book.volumeInfo.imageLinks!.thumbnail,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          book.volumeInfo.title!,
          textAlign: TextAlign.center,
          style: Styles.textStyle30,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
        Text(
          book.volumeInfo.authors![0],
          textAlign: TextAlign.center,
          style: Styles.textStyle16.copyWith(
            fontStyle: FontStyle.italic,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: book.volumeInfo.averageRating ?? 0,
          count: book.volumeInfo.ratingsCount ?? 0,
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
