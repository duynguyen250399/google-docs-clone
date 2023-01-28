import 'package:flutter/material.dart';
import 'package:google_docs_clone/src/core/ui/widgets/logo.dart';
import 'package:google_docs_clone/src/core/values/constants.dart';
import 'package:google_docs_clone/src/modules/editor/ui/widgets/document_title_textfield.dart';
import 'package:google_docs_clone/src/modules/editor/ui/widgets/editor_action_bar.dart';

class EditorHeader extends StatefulWidget implements PreferredSizeWidget {
  const EditorHeader({super.key});

  @override
  State<EditorHeader> createState() => _EditorHeaderState();

  @override
  Size get preferredSize => Size.fromHeight($constants.editorHeaderHeight);
}

class _EditorHeaderState extends State<EditorHeader> {
  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 16,
            ),
            child: Row(
              children: [
                const GoogleDocsLogo(
                  width: 40,
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          DocumentTitleTextField(),
                        ],
                      ),
                      const EditorActionBar(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
