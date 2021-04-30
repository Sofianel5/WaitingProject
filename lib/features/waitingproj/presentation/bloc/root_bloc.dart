import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'root_event.dart';
part 'root_state.dart';

class RootBloc extends Bloc<RootEvent, RootState> {

  @override
  RootState get initialState => InitialState();

  @override
  Stream<RootState> mapEventToState(RootEvent event) async* {
    print(event);
  }
}