import 'package:redux/redux.dart';
import 'package:ieatta/reducers/app_reducer.dart';
import 'package:ieatta/models/app_state.dart';

final store = new Store<AppState>(
  appReducer,
  initialState: new AppState(),
);