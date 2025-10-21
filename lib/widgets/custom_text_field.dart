import 'package:flutter/material.dart';

const customGrey = Color(0xFFececec);
const customBorder = Color(0xFFa5a5a5);
const customFocusedBorder = Color(0xFF4e6074);
const customBlue = Color(0xFF2d5482);

InputDecoration customInputDecoration() {
  return const InputDecoration(
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: customBorder,
        width: 1.5,
      ),
    ),

    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: customFocusedBorder,
        width: 2.2,
      ),
    ),
    filled: true,
    fillColor: customGrey,
  );
}