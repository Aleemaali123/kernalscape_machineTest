import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget smallTextField(TextEditingController controller, {bool isDropdown = false}) {
  return SizedBox(
    height: 34,
    child: TextField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4), 
          borderSide: BorderSide(color: Colors.grey.shade300)
        ),
        isDense: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        suffixIcon: isDropdown ? Icon(
          Icons.arrow_drop_down,
          size: 16,
          color: Colors.grey[600],
        ) : null,
      ),
    ),
  );
}

