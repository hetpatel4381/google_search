import 'package:flutter/material.dart';
import 'package:google_search/colors.dart';

class LanguagesTitle extends StatelessWidget {
  final String title;
  const LanguagesTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Text(title, style: const TextStyle(color: blueColor),),
    );
  }
}
