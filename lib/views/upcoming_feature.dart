import 'package:flutter/material.dart';

class UpcomingFeature extends StatelessWidget {
  const UpcomingFeature({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(6),
        child: Center(
          child: Text(
            "This feature is in development.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ),
    );
  }
}
