import 'package:flutter/material.dart';

showSnack(context, String title) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.orange.shade800,
      content: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    ),
  );
}
