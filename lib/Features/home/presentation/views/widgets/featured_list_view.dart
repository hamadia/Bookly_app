import 'package:bookly/Features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/book_entity.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key, required this.books});

  final List<BookEntity> books;

  @override
  Widget build(BuildContext context) {
    // Create a ScrollController
    final ScrollController scrollController = ScrollController();

    // Listener to detect scroll position
    scrollController.addListener(() {
      final double maxHeight = MediaQuery.of(context).size.height * 0.3;
      final double currentHeight = scrollController.position.maxScrollExtent;
      var nextPage = 1;
      // Calculate when the scroll view reaches 70% of its length
      if (currentHeight >= maxHeight * 0.7) {
        // Trigger the function to fetch featured books
        BlocProvider.of<FeaturedBooksCubit>(context)
            .fetchFeaturedBooks(pageNumber: nextPage++);
      }
    });

    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        controller: scrollController, // Assign the ScrollController
        scrollDirection: Axis.horizontal,
        itemCount: books.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: CustomBookItem(
              image: books[index].image ?? '',
            ),
          );
        },
      ),
    );
  }
}
