import 'package:choice_date_of_birth/cubit/navigation_cubit/navigation_cubit.dart';
import 'package:choice_date_of_birth/widgets/back_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockNavigationCubit extends Mock implements NavigationCubit {
  @override
  Stream<NavigationState> get stream => const Stream<NavigationState>.empty();

  @override
  Future<void> close() async {}
}

void main() {
  late NavigationCubit navigationCubit;

  setUp(() {
    navigationCubit = MockNavigationCubit();
  });
  testWidgets('renders the IconButton and triggers goBack on press',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Stack(
            children: [
              // Other children of the Stack, if any.
              BlocProvider<NavigationCubit>(
                create: (context) => navigationCubit,
                child: const BackButtonWidget(),
              ),
            ],
          ),
        ),
      ),
    );

    final iconButtonFinder = find.byIcon(Icons.arrow_back_ios);
    expect(iconButtonFinder, findsOneWidget);

    await tester.tap(iconButtonFinder);

    verify(navigationCubit.goBack()).called(1);
  });
}
