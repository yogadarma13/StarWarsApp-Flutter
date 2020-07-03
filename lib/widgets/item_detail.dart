import 'package:flutter/material.dart';

class ItemDetail extends StatelessWidget {
  final String label;
  final String data;

  ItemDetail(this.label, this.data);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 16),
          child: Text(
            label,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 8),
          child: Text(data),
        ),
      ],
    );
  }
}
