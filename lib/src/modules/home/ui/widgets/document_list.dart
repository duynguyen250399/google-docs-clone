import 'package:flutter/material.dart';
import 'package:google_docs_clone/src/modules/home/ui/widgets/document_item.dart';

class DocumentList extends StatelessWidget {
  const DocumentList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 30,
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.1,
        vertical: 24,
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 0.7,
      ),
      itemBuilder: _itemBuilder,
    );
  }

  Widget _itemBuilder(BuildContext context, int index) {
    return const DocumentItem();
  }
}
