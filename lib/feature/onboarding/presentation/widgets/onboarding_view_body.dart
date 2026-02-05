import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:mashena_driver_app/core/localization/local_keys.dart';
import 'package:mashena_driver_app/core/utils/app_images.dart';
import 'package:mashena_driver_app/core/widgets/custom_elevated_button.dart';
import 'package:mashena_driver_app/feature/onboarding/domain/entities/onboarding_entity.dart';
import 'package:mashena_driver_app/feature/onboarding/presentation/widgets/page_view_item.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  late final PageController _pageController;
  int _currentIndex = 0;

  final List<OnboardingEntity> _pages = [
    OnboardingEntity(
      titleKey: LocaleKeys.onboardingTitle1,
      subtitleKey: LocaleKeys.onboardingSubtitle1,
      image: Assets.imagesOnboarding1,
    ),
    OnboardingEntity(
      titleKey: LocaleKeys.onboardingTitle2,
      subtitleKey: LocaleKeys.onboardingSubtitle2,
      image: Assets.imagesOnboarding2,
    ),
    OnboardingEntity(
      titleKey: LocaleKeys.onboardingTitle3,
      subtitleKey: LocaleKeys.onboardingSubtitle3,
      image: Assets.imagesOnboarding3,
    ),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 10,
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) => setState(() => _currentIndex = index),
            children: _pages
                .map((e) => PageViewItem(onboardingEntity: e))
                .toList(),
          ),
        ),

        DotsIndicator(
          dotsCount: _pages.length,
          position: _currentIndex.toDouble(),
          decorator: DotsDecorator(
            size: const Size.square(8),
            activeSize: const Size(16, 8),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        Spacer(),
        CustomElevatedButton(
          title: _currentIndex != _pages.length - 1 ? 'Next' : 'Get started',
          onPressed: () {
            if (_currentIndex != _pages.length - 1) {
              _pageController.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            }
          },
        ),
        SizedBox(height: 30),
      ],
    );
  }
}
