import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_docs_clone/gen/assets.gen.dart';
import 'package:google_docs_clone/gen/colors.gen.dart';

class DocumentCreationCard extends StatefulWidget {
  const DocumentCreationCard({super.key});

  @override
  State<DocumentCreationCard> createState() => _DocumentCreationCardState();
}

class _DocumentCreationCardState extends State<DocumentCreationCard> {
  bool _showShadow = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        _showShadow = value;
        if (mounted) {
          setState(() {});
        }
      },
      onTap: () => context.push('/editor'),
      child: Stack(
        fit: StackFit.expand,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 50),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
              boxShadow: [
                if (_showShadow)
                  BoxShadow(
                    offset: const Offset(1, 1),
                    color: Colors.blue.withOpacity(0.1),
                    blurRadius: 16,
                  ),
              ],
            ),
            child: Image.asset(Assets.images.blankDocument.path),
          ),
          Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  color: ColorName.grey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
