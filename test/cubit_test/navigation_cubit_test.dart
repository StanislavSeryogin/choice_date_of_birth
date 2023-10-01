import 'package:choice_date_of_birth/cubit/export_cubit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('NavigationCubit', () {
    late NavigationCubit navigationCubit;

    setUp(() {
      navigationCubit = NavigationCubit();
    });

    test('initial state is ChoiceScreenState', () {
      expect(navigationCubit.state, ChoiceScreenState());
    });

    test(
        'navigateToDateOfBirthScreen updates the state to DateOfBirthScreenState',
        () {
      navigationCubit.navigateToDateOfBirthScreen();
      expect(navigationCubit.state, DateOfBirthScreenState());
    });

    test(
        'navigateToSummaryOfSelectionScreen updates the state to SummaryOfSelectionScreenState',
        () {
      navigationCubit.navigateToSummaryOfSelectionScreen();
      expect(navigationCubit.state, SummaryOfSelectionScreenState());
    });

    test('navigateBackToChoiceScreen updates the state to ChoiceScreenState',
        () {
      navigationCubit.navigateBackToChoiceScreen();
      expect(navigationCubit.state, ChoiceScreenState());
    });

    test('goBack from DateOfBirthScreenState returns to ChoiceScreenState', () {
      navigationCubit
          .navigateToDateOfBirthScreen(); 
      navigationCubit.goBack();
      expect(navigationCubit.state, ChoiceScreenState());
    });

    test(
        'goBack from SummaryOfSelectionScreenState returns to DateOfBirthScreenState',
        () {
      navigationCubit
          .navigateToSummaryOfSelectionScreen(); 
      navigationCubit.goBack();
      expect(navigationCubit.state, DateOfBirthScreenState());
    });

    test('goBack from ChoiceScreenState does not change the state', () {
      navigationCubit
          .navigateBackToChoiceScreen(); 
      navigationCubit.goBack();
      expect(navigationCubit.state, ChoiceScreenState());
    });
  });
}
