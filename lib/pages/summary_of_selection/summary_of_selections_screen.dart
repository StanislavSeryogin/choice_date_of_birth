import 'package:choice_date_of_birth/widgets/back_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/export_cubit.dart';

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
                Center(
                  child: Text(
                    'Selected Year: ${state.year}',
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 35.0,
                    ),
                  ),
                )
              else
                const Center(
                  child: Text(
                    'No Year Selected',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 35.0,
                      color: Colors.red,
                    ),
                  ),
                ),

              const BackButtonWidget(),
            ],
          );
        },
      ),
    );
  }
}
