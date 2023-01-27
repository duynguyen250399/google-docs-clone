import 'package:flutter/material.dart';
import 'package:google_docs_clone/gen/assets.gen.dart';

class DocumentItem extends StatelessWidget {
  const DocumentItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xffDADCE0),
          ),
          borderRadius: BorderRadius.circular(4),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Image.asset(Assets.logo.path),
            const Divider(),
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
    );
  }
}
