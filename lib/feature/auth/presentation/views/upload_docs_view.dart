import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mashena_driver_app/app/router/app_routes.dart';
import 'package:mashena_driver_app/core/l10n/app_localizations.dart';
import 'package:mashena_driver_app/core/utils/toast_helper.dart';
import 'package:mashena_driver_app/feature/auth/presentation/cubits/upload_docs_cubit/upload_docs_cubit.dart';
import 'package:mashena_driver_app/feature/auth/presentation/cubits/upload_docs_cubit/upload_docs_state.dart';
import 'package:mashena_driver_app/feature/auth/presentation/widgets/upload_docs_view_body.dart';

class UploadDocsView extends StatelessWidget {
  const UploadDocsView({super.key, required this.userId});
  final int userId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocListener<UploadDocsCubit, UploadDocsState>(
          listener: (context, state) {
            state.whenOrNull(
              loading: () {},
              success: () {
                context.showSuccessToast(S.of(context).uploadedSuccessfully);
                context.go(AppRoutes.loginPath);
              },
              error: (msg) {
                context.showErrorToast(msg);
              },
            );
          },
          child: UploadDocsBody(userId: userId),
        ),
      ),
    );
  }
}
