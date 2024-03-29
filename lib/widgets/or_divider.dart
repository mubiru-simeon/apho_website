import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  final Color color;
  final String text;
  const OrDivider({
    Key key,
    this.color = Colors.grey,
    this.text = "OR",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: Divider(
              thickness: 2,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 16,
              color: color,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Expanded(
            child: Divider(
              color: Colors.grey,
              thickness: 2,
            ),
          ),
        ],
      ),
    );
  }
}
