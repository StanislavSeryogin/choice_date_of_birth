import 'package:choice_date_of_birth/pages/summary_of_selection/widgets/selected_year_widget.dart';
import 'package:choice_date_of_birth/widgets/back_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/export_cubit.dart';
import 'widgets/no_years_selected_widget.dart';

class SummaryOfSelectionScreen extends StatelessWidget {
  const SummaryOfSelectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<DataCubit, DataState>(
        builder: (context, state) {
          return Stack(
            children: [
              if (state is DateSelected)
                SelectedYearWidget(
                  text: 'Selected Year: ${state.year}',
                )
              else
                const NoYearSelectedWidget(),
              const BackButtonWidget(),
            ],
          );
        },
      ),
    );
  }
}


