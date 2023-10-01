import 'package:choice_date_of_birth/pages/date_of_birth/widgets/select_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mockito/mockito.dart';
import 'package:choice_date_of_birth/cubit/navigation_cubit/navigation_cubit.dart';

class MockNavigationCubit extends Mock implements NavigationCubit {
  @override
  Future<void> close() async {}

  @override
  Stream<NavigationState> get stream => const Stream.empty();
}

void main() {
  group('SelectButtonWidget', () {
    late NavigationCubit navigationCubit;

    setUp(() {
      navigationCubit = MockNavigationCubit();
    });

    tearDown(() {
      navigationCubit.close();
    });

    testWidgets('checking "Next" text and arrow image',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        BlocProvider<NavigationCubit>(
          create: (context) => navigationCubit,
          child: const MaterialApp(
            home: Scaffold(
              body: Stack(
                children: [SelectButtonWidget()],
              ),
            ),
          ),
        ),
      );

      expect(find.text('Next'), findsOneWidget);
      expect(find.byType(Image), findsOneWidget);
    });

    testWidgets('navigates when tapped', (WidgetTester tester) async {
      when(navigationCubit.navigateToSummaryOfSelectionScreen())
          .thenAnswer((_) {});

      await tester.pumpWidget(
        BlocProvider<NavigationCubit>(
          create: (context) => navigationCubit,
          child: const MaterialApp(
            home: Scaffold(
              body: Stack(
                children: [SelectButtonWidget()],
              ),
            ),
          ),
        ),
      );

      await tester.tap(find.byType(InkWell));
      await tester.pump();

      verify(navigationCubit.navigateToSummaryOfSelectionScreen()).called(1);
    });
  });
}
