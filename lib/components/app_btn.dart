import 'package:flutter/material.dart';

Widget appButton({
  required BuildContext context,
  required VoidCallback onTap,
  required String text,
  double? width,
}) {
  return SizedBox(
    width: width,
    child: ElevatedButton(
      onPressed: onTap,
      child: Text(
        text,
        style: TextStyle(color: Colors.teal),
      ),
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    ),
  );
}
