import 'package:flutter/material.dart';
import 'package:google_docs_clone/src/modules/home/ui/widgets/document_list.dart';
import 'package:google_docs_clone/src/modules/home/ui/widgets/home_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeHeader(),
      body: Stack(
        fit: StackFit.expand,
        children: [
          // ignore: use_colored_box
          Container(
            color: const Color(0xffF1F3F4),
          ),
          const DocumentList(),
        ],
      ),
    );
  }
}
