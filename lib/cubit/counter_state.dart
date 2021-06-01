part of 'counter_cubit.dart';

class CounterState extends Equatable {
  int counterValue;
  bool wasIncreased;
  CounterState({@required this.counterValue, this.wasIncreased});

  @override
  // TODO: implement props
  List<Object> get props => [this.counterValue, this.wasIncreased];
}
