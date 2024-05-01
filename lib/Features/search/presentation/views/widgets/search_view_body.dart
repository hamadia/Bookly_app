import 'package:bookly/Features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly/Features/search/presentation/views/widgets/search_results_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(
            height: 15,
          ),
          Text(
            'Best Seller',
            style: Styles.textStyle18S,
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: SearchResultListView(),
          ),
        ],
      ),
    );
  }
}
