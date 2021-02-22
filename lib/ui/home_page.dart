import 'package:boilerplate_flutter/data/provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Consumer<CounterProvider>(
          builder: (context, provider, child) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('You have pushed the button this many times:'),
              Text(
                provider.counter,
                style: Theme.of(context).textTheme.headline4,
              ),
              RaisedButton(
                child: Text('Decrement'),
                onPressed: provider.decrementCounter,
              ),
              RaisedButton(
                child: Text('Clear'),
                onPressed: () => provider.setCounter(0),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Consumer<CounterProvider>(
        builder: (context, provider, child) => FloatingActionButton(
          onPressed: provider.incrementCounter,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
