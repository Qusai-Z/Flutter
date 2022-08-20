import 'package:flutter/Material.dart';

Widget defaultButton({
  @required double width = double.infinity,
  Color Background_Color = Colors.red,
  required Function function,
  required String text,
  Color TextColor = Colors.white,
  double DecorationRadius = 20,
}) =>
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(DecorationRadius),
        color: Background_Color,
      ),
      width: double.infinity,
      child: MaterialButton(
        onPressed: function(),
        child: Text(
          text,
          style: TextStyle(color: TextColor),
        ),
      ),
    );
