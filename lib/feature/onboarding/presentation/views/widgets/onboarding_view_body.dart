import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mashena_driver_app/app/di/injector.dart';
import 'package:mashena_driver_app/app/router/app_routes.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:mashena_driver_app/core/theme/app_colors.dart';
import 'package:mashena_driver_app/core/utils/app_images.dart';
import 'package:mashena_driver_app/core/widgets/custom_elevated_button.dart';
import 'package:mashena_driver_app/feature/onboarding/domain/entities/onboarding_entity.dart';
import 'package:mashena_driver_app/feature/onboarding/domain/usecases/complete_onboarding_usecase.dart';
import 'package:mashena_driver_app/feature/onboarding/presentation/views/widgets/page_view_item.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  late final PageController _pageController;
  int _currentIndex = 0;

  final List<OnboardingEntity> _pages = [];

  @override
  void didChangeDependencies() {
    _pages.addAll([
      OnboardingEntity(
        title: S.of(context).onboardingTitle1,
        subtitle: S.of(context).onboardingSubtitle1,
        image: Assets.imagesOnboarding1,
      ),
      OnboardingEntity(
        title: S.of(context).onboardingTitle2,
        subtitle: S.of(context).onboardingSubtitle2,
        image: Assets.imagesOnboarding2,
      ),
      OnboardingEntity(
        title: S.of(context).onboardingTitle3,
        subtitle: S.of(context).onboardingSubtitle3,
        image: Assets.imagesOnboarding3,
      ),
    ]);
    super.didChangeDependencies();
  }

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
          animate: true,
          position: _currentIndex.toDouble(),
          decorator: DotsDecorator(
            activeColor: AppColors.primaryColor,
            size: const Size.square(8),
            activeSize: const Size(16, 8),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        Spacer(),
        CustomElevatedButton(
          title: S.of(context).commonNext,
          onPressed: () async {
            if (_currentIndex != _pages.length - 1) {
              _pageController.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            }
            if (_currentIndex == 2) {
              await getIt<CompleteOnboarding>()();
              if (context.mounted) {
                GoRouter.of(context).goNamed(AppRoutes.signup);
              }
            }
          },
        ),
        SizedBox(height: 30),
      ],
    );
  }
}
