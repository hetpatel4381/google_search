import 'package:flutter/material.dart';
import 'package:google_search/widgets/web/languages_title.dart';

class TranslationButtons extends StatelessWidget {
  const TranslationButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      alignment: WrapAlignment.center,
      children: [
        Text('Google offered in:'),
        SizedBox(width: 5),
        LanguagesTitle(title: 'हिन्दी'),
        SizedBox(width: 5),
        LanguagesTitle(title: 'বাংলা'),
        SizedBox(width: 5),
        LanguagesTitle(title: 'తెలుగు'),
        SizedBox(width: 5),
        LanguagesTitle(title: 'मराठी'),
        SizedBox(width: 5),
        LanguagesTitle(title: 'தமிழ்'),
        SizedBox(width: 5),
        LanguagesTitle(title: 'ગુજરાતી'),
        SizedBox(width: 5),
        LanguagesTitle(title: 'ಕನ್ನಡ'),
        SizedBox(width: 5),
        LanguagesTitle(title: 'മലയാളം'),
        SizedBox(width: 5),
        LanguagesTitle(title: 'ਪੰਜਾਬੀ'),
      ],
    );
  }
}
