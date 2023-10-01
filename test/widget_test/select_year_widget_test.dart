import 'package:choice_date_of_birth/pages/date_of_birth/widgets/select_year_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mockito/mockito.dart';
import 'package:choice_date_of_birth/cubit/data_cubit/data_cubit.dart';

class MockDataCubit extends Mock implements DataCubit {
  @override
  Stream<DataState> get stream => Stream<DataState>.value(DataInitial());

  @override
  Future<void> close() async {}

  @override
  List<int> get years => <int>[2000, 2001, 2002];
}

void main() {
  late DataCubit dataCubit;

  setUp(() {
    dataCubit = MockDataCubit();
  });

  testWidgets('renders correctly and calls selectDate on item selection',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      BlocProvider<DataCubit>(
        create: (context) => dataCubit,
        child: const MaterialApp(
          home: SelectYearWidget(),
        ),
      ),
    );

    expect(find.text('Log in your date of birth'), findsOneWidget);

    expect(find.text('2000'), findsOneWidget);
    expect(find.text('2001'), findsOneWidget);
    expect(find.text('2002'), findsOneWidget);

    await tester.drag(find.byType(CupertinoPicker), const Offset(0, -60));
    await tester.pumpAndSettle();

    verify(dataCubit.selectDate(2001)).called(1);
  });
}
