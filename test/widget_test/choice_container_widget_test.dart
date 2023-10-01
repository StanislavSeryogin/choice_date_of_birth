import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:choice_date_of_birth/pages/choice/widgets/choice_container_widget.dart';
import 'package:choice_date_of_birth/cubit/navigation_cubit/navigation_cubit.dart';
import 'package:mockito/mockito.dart';

class MockNavigationCubit extends Mock implements NavigationCubit {
  final StreamController<NavigationState> _stateController =
      StreamController.broadcast();

  @override
  Stream<NavigationState> get stream => _stateController.stream;

  @override
  Future<void> close() async {
    await _stateController.close();
  }
}

void main() {
  group('ChoiceContainerWidget', () {
    late NavigationCubit navigationCubit;

    setUp(() {
      navigationCubit = MockNavigationCubit();
    });

    tearDown(() {
      navigationCubit.close();
    });

    testWidgets('checking  mainText and subText', (WidgetTester tester) async {
      await tester.pumpWidget(
        BlocProvider<NavigationCubit>(
          create: (context) => navigationCubit,
          child: const MaterialApp(
            home: Scaffold(
              body: Stack(
                children: [
                  ChoiceContainerWidget(
                    screenTop: 0,
                    screenLeft: 0,
                    mainText: 'Test Main Text',
                    subText: 'Test Sub Text',
                  ),
                ],
              ),
            ),
          ),
        ),
      );

      expect(find.text('Test Main Text'), findsOneWidget);
      expect(find.text('Test Sub Text'), findsOneWidget);
    });

    testWidgets('navigates when tapped', (WidgetTester tester) async {
      when(navigationCubit.navigateToDateOfBirthScreen()).thenAnswer((_) {});

      await tester.pumpWidget(
        BlocProvider<NavigationCubit>(
          create: (context) => navigationCubit,
          child: const MaterialApp(
            home: Scaffold(
              body: Stack(
                children: [
                  ChoiceContainerWidget(
                    screenTop: 0,
                    screenLeft: 0,
                    mainText: 'Test Main Text',
                    subText: 'Test Sub Text',
                  ),
                ],
              ),
            ),
          ),
        ),
      );

      await tester.tap(find.byType(ChoiceContainerWidget));
      await tester.pumpAndSettle();
      verify(navigationCubit.navigateToDateOfBirthScreen()).called(1);
    });
  });
}
