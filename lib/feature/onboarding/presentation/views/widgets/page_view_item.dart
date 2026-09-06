import 'package:flutter/material.dart';
import 'package:mashena_driver_app/core/utils/app_font_styles.dart';
import 'package:mashena_driver_app/feature/onboarding/domain/entities/onboarding_entity.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key, required this.onboardingEntity});

  final OnboardingEntity onboardingEntity;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Text(
          onboardingEntity.title,
          style: AppTextStyles.w400_42,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36),
          child: Text(
            onboardingEntity.subtitle,
            textAlign: TextAlign.center,
            style: AppTextStyles.w400_16.copyWith(color: Colors.grey.shade700),
          ),
        ),
        const SizedBox(height: 36),
        Image.asset(onboardingEntity.image),

        const Spacer(),
      ],
    );
  }
}
