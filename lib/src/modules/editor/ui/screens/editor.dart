import 'package:flutter/material.dart';
import 'package:google_docs_clone/src/modules/editor/ui/widgets/editor_header.dart';

class EditorScreen extends StatefulWidget {
  const EditorScreen({super.key});

  @override
  State<EditorScreen> createState() => _EditorScreenState();
}

class _EditorScreenState extends State<EditorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EditorHeader(),
    );
  }
}
