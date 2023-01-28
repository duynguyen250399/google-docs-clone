import 'package:flutter/material.dart';
import 'package:google_docs_clone/gen/assets.gen.dart';
import 'package:google_docs_clone/src/core/ui/widgets/logo.dart';

class HomeLogo extends StatelessWidget {
  const HomeLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        GoogleDocsLogo(
          width: 40,
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          'Docs',
          style: TextStyle(
            color: Color(0xff6A6E74),
            fontWeight: FontWeight.w500,
            fontSize: 22,
          ),
        ),
      ],
    );
  }
}
