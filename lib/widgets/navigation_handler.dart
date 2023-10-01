import 'package:choice_date_of_birth/cubit/navigation_cubit/navigation_cubit.dart';
import 'package:choice_date_of_birth/widgets/show_error_dialog_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../pages/export_page.dart';

class NavigationHandler extends StatelessWidget {
  const NavigationHandler({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        if (state is ChoiceScreenState) {
          return const ChoiceScreen();
        } else if (state is DateOfBirthScreenState) {
          return const DateOfBirthScreen();
        } else if (state is SummaryOfSelectionScreenState) {
          return const SummaryOfSelectionScreen();
        } else {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            _showErrorDialog(context);
          });
          return const SizedBox();
        }
      },
    );
  }

  _showErrorDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) => const ShowErrorDialogWidget(),
    );
  }
}
