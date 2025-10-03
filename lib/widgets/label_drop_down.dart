import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget labeledDropdown(String label, {Widget? child}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label, style: TextStyle(fontSize: 12, color: Colors.grey[700])),
      SizedBox(height: 6),
      child ?? SizedBox.shrink(),
    ],
  );
}