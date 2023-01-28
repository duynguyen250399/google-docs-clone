import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_docs_clone/gen/assets.gen.dart';
import 'package:google_docs_clone/gen/colors.gen.dart';

class DocumentItem extends StatefulWidget {
  const DocumentItem({super.key});

  @override
  State<DocumentItem> createState() => _DocumentItemState();
}

class _DocumentItemState extends State<DocumentItem> {
  Color _borderColor = ColorName.grey;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        if (value) {
          _borderColor = ColorName.primary;
        } else {
          _borderColor = ColorName.grey;
        }

        if (mounted) {
          setState(() {});
        }
      },
      onTap: () {},
      child: Stack(
        fit: StackFit.expand,
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.white,
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(4)),
                  child: Image.network(
                    'https://picsum.photos/500',
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  height: 1,
                  width: double.infinity,
                  color: const Color(0xffDADCE0),
                ),
                const SizedBox(
                  height: 8,
                ),
                Column(
                  children: [
                    const Text(
                      'Document title',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 16,
                        right: 8,
                        top: 8,
                        bottom: 8,
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            Assets.logo.path,
                            width: 20,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          const Text(
                            'Opened Jan 17, 2023',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xff92979B),
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            constraints: const BoxConstraints(),
                            padding: const EdgeInsets.all(2),
                            icon: const Icon(
                              Icons.more_vert,
                              color: Color(0xff5F6368),
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(
                  color: _borderColor,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
