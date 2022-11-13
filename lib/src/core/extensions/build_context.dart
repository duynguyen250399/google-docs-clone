import 'package:flutter/material.dart';

extension BuildContextX on BuildContext {
  TextTheme get tt => Theme.of(this).textTheme;
}
