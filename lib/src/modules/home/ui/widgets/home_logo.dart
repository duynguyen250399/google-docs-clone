import 'package:flutter/material.dart';
import 'package:google_docs_clone/gen/assets.gen.dart';

class HomeLogo extends StatelessWidget {
  const HomeLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          Assets.logo.path,
          width: 40,
        ),
        const SizedBox(
          width: 8,
        ),
        const Text(
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
