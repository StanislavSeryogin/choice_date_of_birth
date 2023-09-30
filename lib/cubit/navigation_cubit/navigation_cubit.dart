import 'package:flutter_bloc/flutter_bloc.dart';

part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(ChoiceScreenState());

  void navigateToDateOfBirthScreen() {
    emit(DateOfBirthScreenState());
  }

  void navigateToSummaryOfSelectionScreen() {
    emit(SummaryOfSelectionScreenState());
  }

  void navigateBackToChoiceScreen() {
    emit(ChoiceScreenState());
  }

   void goBack() {
    var currentState = state;
    if (currentState is SummaryOfSelectionScreenState) {
      navigateToDateOfBirthScreen();
    } else if (currentState is DateOfBirthScreenState) {
      navigateBackToChoiceScreen();
    }
  }
}
