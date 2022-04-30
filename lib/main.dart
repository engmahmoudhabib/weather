// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:weather/reducer.dart';

import 'screens/home.dart';

void main() {
  runApp(
    _WeatherApp(),
  );
}

class _WeatherApp extends StatelessWidget {
  _WeatherApp({Key? key}) : super(key: key);
  final store = Store<int>(
    appReducer,
    initialState: 0,
  );
  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}
