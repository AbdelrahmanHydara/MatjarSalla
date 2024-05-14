import 'package:flutter/material.dart';
import '../../../models/onboarding_model.dart';

Widget buildOnboardItem(OnBoardingModel model,context) =>
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        Expanded(
          child: Image(
            image: AssetImage(
              model.image,
            ),
          ),
        ),
        Text(
          model.title,
          style: Theme.of(context).textTheme.displayLarge,
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          model.body,
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ],
    );