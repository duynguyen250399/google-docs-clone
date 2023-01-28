import 'package:flutter/material.dart';
import 'package:google_docs_clone/src/core/values/constants.dart';
import 'package:google_docs_clone/src/modules/home/ui/widgets/home_logo.dart';
import 'package:google_docs_clone/src/modules/home/ui/widgets/search_bar.dart';
import 'package:google_docs_clone/src/core/ui/widgets/user_avatar.dart';

class HomeHeader extends StatelessWidget implements PreferredSizeWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 8,
        bottom: 8,
      ),
      child: Row(
        children: [
          const Expanded(
            child: HomeLogo(),
          ),
          const Expanded(
            flex: 3,
            child: SearchBar(),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  borderRadius: BorderRadius.circular(100),
                  onTap: () {},
                  child: const UserAvatar(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight($constants.homeHeaderHeight);
}
