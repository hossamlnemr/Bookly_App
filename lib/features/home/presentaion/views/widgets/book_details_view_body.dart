import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/book_actions.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/book_section_details.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/similar_books_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  final BookModel book;
  const BookDetailsViewBody({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverFillRemaining(
        hasScrollBody: false,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            BookSectionDetails(
              book: book,
            ),
            BookActions(book: book),
            const Expanded(
              child: SizedBox(
                height: 5,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'You can also read ',
                  style: Styles.textStyle18,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                BookDetailsViewBody(
                  book: book,
                );
              },
              child: const SimilarBoooksView(),
            ),
          ],
        ),
      ),
    ]);
  }
}
