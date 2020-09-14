import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';

import './counter_observer.dart';
import './counter/view/counter_page.dart';

void main() {
  Bloc.observer = CounterObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App',
      home: CounterPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
