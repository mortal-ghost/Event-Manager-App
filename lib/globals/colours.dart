import 'package:flutter/material.dart';

const MaterialColor primaryBlack = MaterialColor(
  _blackPrimaryValue,
  <int,Color>{
    50: Colors.grey,
    100: Colors.grey,
    200: Color(0xFF000000),
    300: Color(0xFF000000),
    400: Color(0xFF000000),
    500: Color(_blackPrimaryValue),
  },
);
const _blackPrimaryValue = 0xFF000000;