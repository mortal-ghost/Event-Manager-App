import 'package:flutter/material.dart';

const textInputDecoration = InputDecoration(
  filled: true,
  fillColor: Color.fromRGBO(117, 117, 117, 0.13),
  contentPadding:
  EdgeInsets.fromLTRB(12, 10, 12, 10),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(
        Radius.circular(12.0)),
    borderSide: BorderSide(color: Color.fromRGBO(117, 117, 117, 1)),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(
        Radius.circular(12.0)),
    borderSide:
    BorderSide(color: Colors.red),
  ),
  labelStyle: TextStyle(
    fontSize: 18.0,
    color: Colors.black,
  ),
);