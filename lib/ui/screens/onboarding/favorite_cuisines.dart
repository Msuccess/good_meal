import 'package:flutter/material.dart';
import 'package:good_meal/ui/shared/widgets/backbuttom_widget.dart';

class FavoriteCuisinesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: BackButtonWidget(),
            ),
          ),
        ],
      ),
    );
  }
}
