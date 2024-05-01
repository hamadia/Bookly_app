import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {this.mainAxisAlignment = MainAxisAlignment.start, super.key});

  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          Icons.star_rate_rounded,
          color: Color(0xFFFFDD4F),
        ),
        const SizedBox(
          width: 6.3,
        ),
        const Text(
          '4.8',
          style: Styles.textStyle16M,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '(245)',
          style: Styles.textStyle14N.copyWith(
            color: const Color(0xFF707070),
          ),
        ),
      ],
    );
  }
}
