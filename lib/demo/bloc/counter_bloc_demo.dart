import 'dart:async';

import 'package:flutter/material.dart';

class CounterHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CountBloc _counterBloc = CounterProvider.of(context).bloc;
    return Center(
        child: StreamBuilder(
      initialData: 0,
      stream: _counterBloc.count,
      builder: (context, snapshot) {
        return ActionChip(
          label: Text('${snapshot.data}'),
          onPressed: () {
            // _counterBloc.log();
            _counterBloc.counter.add(1);
          },
        );
      },
    ));
  }
}

class CounterActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CountBloc _counterBloc = CounterProvider.of(context).bloc;

    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {
        // _counterBloc.log();
        _counterBloc.counter.add(1);
      },
    );
  }
}

class CounterProvider extends InheritedWidget {
  CounterProvider({
    this.child,
    this.bloc,
  }) : super(child: child);

  final Widget child;
  final CountBloc bloc;

  static CounterProvider of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(CounterProvider)
        as CounterProvider);
  }

  @override
  bool updateShouldNotify(CounterProvider oldWidget) {
    return true;
  }
}

class CountBloc {
  int _count = 0;
  final _counterActionController = StreamController<int>();
  StreamSink<int> get counter => _counterActionController.sink;
  final _countController = StreamController<int>();
  Stream<int> get count => _countController.stream;

  CountBloc() {
    _counterActionController.stream.listen(onData);
  }

  void onData(int event) {
    // print('$event');
    _count = event + _count;
    _countController.add(_count);
  }

  void disponse() {
    _counterActionController.close();
    _countController.close();
  }
}
