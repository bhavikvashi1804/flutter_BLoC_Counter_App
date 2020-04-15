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

    final CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);
    //use this to call Events


    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: BlocBuilder<CounterBloc, int>(
        //used BlocBuilder to consume data Stream
        builder: (context, count) {
          return Center(
            child: Text(
              '$count',
              style: TextStyle(fontSize: 24.0),
            ),
          );
        },
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          FloatingActionButton(
            onPressed: (){
              counterBloc.add(CounterEvent.increment);
            },
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
          SizedBox(width:10),
          FloatingActionButton(
            onPressed: (){
              counterBloc.add(CounterEvent.decrement);
              //to Execute Event blocobj.add(Event)
            },
            tooltip: 'Decrement',
            child: Icon(Icons.remove),
          ),

        ],
      ), 
    );
  }
}
