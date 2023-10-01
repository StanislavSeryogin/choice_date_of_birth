part of 'navigation_cubit.dart';

abstract class NavigationState extends Equatable {
  @override
  List<Object?> get props => [];
}

class ChoiceScreenState extends NavigationState {}

class DateOfBirthScreenState extends NavigationState {}

class SummaryOfSelectionScreenState extends NavigationState {}

