part of 'data_cubit.dart';

abstract class DataState extends Equatable {
  const DataState();

  @override
  List<Object?> get props => [];
}

class DataInitial extends DataState {}

class DateSelected extends DataState {
  final int year;

  const DateSelected(this.year);

  @override
  List<Object?> get props => [year];
}
