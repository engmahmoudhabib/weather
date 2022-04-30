// ignore_for_file: curly_braces_in_flow_control_structures

import 'actions.dart';

int appReducer(int oldState, dynamic action) {
  if (action is Increment) {
   
    return oldState + 1;
  } else if (action is Decrement) {
    return oldState - 1;
  } else
    return oldState;
}
