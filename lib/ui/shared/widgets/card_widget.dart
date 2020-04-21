import 'package:flutter/material.dart';
import 'package:good_meal/core/constants/styles.dart';
import 'package:good_meal/ui/shared/custom_widget/starrating_widget.dart';

class MostLikedCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: screenWidth / 2.6,
              height: screenWidth / 3,
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
                child: Image.asset(
                  'assets/images/piza.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                'Miso - Grilled Aubgine',
                style: h4,
              ),
            ),
            StarRating(
              filledStar: Icons.star,
              unfilledStar: Icons.star_border,
              value: 3,
              onChanged: null,
              color: Styles.primaryColor,
            )
          ],
        ),
      ),
    );
  }
}
