import 'package:flutter/material.dart';
import 'widget/language_screen_body.dart';

class LanguageScreen extends StatelessWidget
{
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(),
      body: const LanguageScreenBody(),
    );
  }
}