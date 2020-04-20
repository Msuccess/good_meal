import 'package:flutter/material.dart';
import 'package:good_meal/ui/shared/widgets/header_widget.dart';

class LayersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: <Widget>[
              HeaderWidget(headerText: 'GOOD MEALS'),
              Container(
                child: Card(
                  borderOnForeground: true,
                  elevation: 3.0,
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text('The Enchanted Nightingale'),
                        subtitle:
                            Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
