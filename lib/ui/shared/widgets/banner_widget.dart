import 'package:flutter/material.dart';
import 'package:good_meal/core/constants/styles.dart';

class BannerWidget extends StatelessWidget {
  final List<String> items;
  final List<String> images;

  BannerWidget({
   this.items, this.images,
  });

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    PageController controller = new PageController(
      initialPage: 2,
      viewportFraction: 0.8,
    );

    List<Widget> banners = new List<Widget>();

    for (var i = 0; i < items.length; i++) {
      var bannerView = Padding(
        padding: EdgeInsets.all(10.0),
        child: Container(
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black38,
                      offset: Offset(
                        2.0,
                        2.0,
                      ),
                      blurRadius: 5.0,
                      spreadRadius: 1.0,
                    ),
                  ],
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
                child: Image.asset(
                  images[i],
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black,
                      Colors.transparent,
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Family Vegan',
                      style: titleStyle,
                    ),
                    Text(
                      'Salad Tips',
                      style: titleStyle,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '10 Family Salad Recepes',
                      style: subtitleStyle,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      );

      banners.add(bannerView);
    }

    return Container(
      width: screenWidth,
      height: screenHeight * 9 / 16,
      child: PageView(
        physics: ClampingScrollPhysics(),
        controller: controller,
        scrollDirection: Axis.horizontal,
        children: banners,
      ),
    );
  }
}
