import 'dart:developer';

import 'package:auto_size_text_field/auto_size_text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_docs_clone/gen/colors.gen.dart';

class DocumentTitleTextField extends StatefulWidget {
  const DocumentTitleTextField({super.key});

  @override
  State<DocumentTitleTextField> createState() => _DocumentTitleTextFieldState();
}

class _DocumentTitleTextFieldState extends State<DocumentTitleTextField> {
  final _documentTitleController = TextEditingController();
  final _focusNode = FocusNode();

  Color _borderColor = Colors.transparent;
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _documentTitleController.text = 'Untitled document';

    _focusNode.addListener(_focusListener);
  }

  @override
  void dispose() {
    _documentTitleController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        if (event.kind != PointerDeviceKind.mouse) {
          return;
        }

        if (mounted) {
          setState(() {
            _borderColor = ColorName.grey;
          });
        }
      },
      onExit: (event) {
        if (event.kind != PointerDeviceKind.mouse) {
          return;
        }

        if (mounted) {
          setState(() {
            _borderColor = Colors.transparent;
          });
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 6,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: _isFocused ? Colors.blue : _borderColor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(2),
        ),
        child: AutoSizeTextField(
          fullwidth: false,
          focusNode: _focusNode,
          scrollPadding: EdgeInsets.zero,
          controller: _documentTitleController,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.zero,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            isDense: true,
          ),
        ),
      ),
    );
  }

  void _focusListener() {
    if (mounted) {
      setState(() {
        _isFocused = _focusNode.hasFocus;
      });
    }
  }
}
