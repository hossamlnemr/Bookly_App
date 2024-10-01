import 'package:bookly_app/core/functions/url_lancher.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';

class BookActions extends StatelessWidget {
  final BookModel book;
  const BookActions({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Expanded(
            child: CustomTextButton(
              txt: r'Free',
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
              backgroundColor: Colors.white,
              txtColor: Colors.black,
              onPressed: () {},
            ),
          ),
          Expanded(
            child: CustomTextButton(
              txt: 'Free preview',
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              backgroundColor: const Color(0xffEf8262),
              txtColor: Colors.white,
              onPressed: () {
                setupUrlLancher(context, book.volumeInfo.previewLink!);
              },
            ),
          ),
        ],
      ),
    );
  }
}
