import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';

class TRatingBarIndicator extends StatelessWidget {
  const TRatingBarIndicator({
    super.key,
    required this.rating,
  });
  final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBar(
      size: 20,
      filledIcon: Icons.star,
      emptyIcon: Icons.star_border,
      onRatingChanged: (value) => debugPrint('$value'),
      initialRating: rating,
      maxRating: 5,
    );
  }
}
