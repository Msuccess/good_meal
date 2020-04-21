import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:good_meal/core/constants/styles.dart';
import 'package:good_meal/ui/shared/custom_widget/starrating_widget.dart';
import 'package:good_meal/ui/shared/widgets/banner_widget.dart';
import 'package:good_meal/ui/shared/widgets/card_widget.dart';
import 'package:good_meal/ui/shared/widgets/header_widget.dart';

var bannerItems = ['Bugger', 'Cheease Chilly', 'Pizza'];
var bannerImages = [
  "assets/images/pancakes.jpg",
  "assets/images/piza.jpg",
  "assets/images/vegetables.jpg"
];

class LayersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                HeaderWidget(headerText: 'GOOD MEALS'),
                BannerWidget(items: bannerItems, images: bannerImages),
                SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Text(
                    'Healthy Vegan Life',
                    style: h2,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10.0),
                  height: screenHeight / 3.6,
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    dragStartBehavior: DragStartBehavior.start,
                    padding: const EdgeInsets.all(4.0),
                    children: <Widget>[
                      MostLikedCard(),
                      MostLikedCard(),
                      MostLikedCard(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Text(
                    'Popular Recipes',
                    style: h2,
                  ),
                ),
                TileCardWidget(),
                Divider(),
                TileCardWidget(),
                Divider(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TileCardWidget extends StatelessWidget {
  const TileCardWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ListTile(
        leading: Container(
          height: 200,
          child: ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            child: Image.asset(
              'assets/images/piza.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(
          'Chicken Salad',
          style: foodHeader,
        ),
        contentPadding: EdgeInsets.all(10.0),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text('Special Diets'),
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
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text('7.2K', style: h2),
            Text('Cooked', style: subTileStyle),
          ],
        ),
        isThreeLine: true,
      ),
    );
  }
}
