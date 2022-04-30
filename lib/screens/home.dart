// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:weather/actions.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  @override
  Widget build(BuildContext context) {
    final Store<int> storeProvider = StoreProvider.of<int>(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
        ),
        onPressed: () => storeProvider.dispatch(Increment()),
      ),
      body: Center(
        child: StoreConnector<int, int>(
            builder: ((context, vm) {
              return Text(
                'Current State is : $vm',
                style: TextStyle(
                  fontSize: 30,
                ),
              );
            }),
            converter: (Store<int> store) => store.state),
      ),
    );
  }
}
