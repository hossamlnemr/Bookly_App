import 'package:bookly_app/core/widgets/best_seller_item.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatefulWidget {
  final List<BookModel> filteredData;

  const SearchResultListView({super.key, required this.filteredData});

  @override
  State<SearchResultListView> createState() => _SearchResultListViewState();
}

class _SearchResultListViewState extends State<SearchResultListView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.filteredData.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: BestSellerItem(book: widget.filteredData[index]),
        );
      },
    );
  }
}
