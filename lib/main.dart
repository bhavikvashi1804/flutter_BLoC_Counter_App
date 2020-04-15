import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import './counter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App',
      home: BlocProvider<CounterBloc>(
        create: (context) => CounterBloc(),
        child: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              'Value',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          FloatingActionButton(
            onPressed: (){},
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
          SizedBox(width:10),
          FloatingActionButton(
            onPressed: (){},
            tooltip: 'Decrement',
            child: Icon(Icons.remove),
          ),

        ],
      ), 
    );
  }
}
