part of 'root_bloc.dart';

abstract class RootState extends Equatable {
  const RootState();
}

class InitialState extends RootState {
  @override
  List<Object> get props => [];
}