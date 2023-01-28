import 'package:flutter/material.dart';
import 'package:google_docs_clone/gen/colors.gen.dart';
import 'package:google_docs_clone/gen/fonts.gen.dart';

final appTheme = ThemeData(
  fontFamily: FontFamily.montserrat,
  useMaterial3: true,
  primaryColor: ColorName.primary,
  primarySwatch: Colors.blue,
  primaryIconTheme: const IconThemeData(
    color: ColorName.primary,
  ),
  scaffoldBackgroundColor: const Color(0xffF1F3F4),
  textTheme: _textTheme,
);

const _textTheme = TextTheme();
