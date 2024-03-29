import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SingleBigButton extends StatelessWidget {
  final String text;
  final double textSize;
  final Color color;
  final Function onPressed;
  final double padding;
  final bool processing;

  SingleBigButton({
    Key key,
    @required this.text,
    this.processing = false,
    this.padding = 8,
    this.textSize = 15,
    @required this.color,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 5,
        vertical: 2,
      ),
      child: Material(
        borderRadius: BorderRadius.circular(15),
        child: InkWell(
          onTap: onPressed,
          child: Container(
            padding: EdgeInsets.all(padding),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(
                15,
              ),
            ),
            child: Center(
              child: processing != null && processing
                  ? SpinKitWave(
                      color: Colors.white,
                      size: 17,
                    )
                  : Text(
                      text,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: textSize,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
