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
  });
}
