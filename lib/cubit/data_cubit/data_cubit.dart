import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'data_state.dart';

class DataCubit extends Cubit<DataState> {

  final List<int> years = List.generate(101, (index) => 1950 + index);

  DataCubit() : super(DataInitial());

  void selectDate(int year) {
    if (!years.contains(year)) {
      emit(const DateError("Incorrect year selected."));
    } else {
      emit(DateSelected(year));
    }
  }
}
