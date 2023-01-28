import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundImage: NetworkImage(
        'https://images.hindustantimes.com/img/2022/08/13/550x309/sick_cat_1660402138551_1660402151976_1660402151976.jpg',
      ),
    );
  }
}
