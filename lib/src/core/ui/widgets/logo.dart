import 'package:flutter/material.dart';
import 'package:google_docs_clone/gen/assets.gen.dart';

class GoogleDocsLogo extends StatelessWidget {
  const GoogleDocsLogo({
    super.key,
    this.width,
  });

  final double? width;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Assets.logo.path,
      width: width,
    );
  }
}
