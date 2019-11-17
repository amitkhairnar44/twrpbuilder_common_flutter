import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  final int count;

  const Counter({Key key, this.count}) : super(key: key);
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> with SingleTickerProviderStateMixin {
  Animation<int> _counter;
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _counter = IntTween(begin: 0, end: widget.count).animate(CurvedAnimation(parent: _controller, curve: Curves.fastLinearToSlowEaseIn));
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: (BuildContext context, child) {
        return Text(
          '${_counter.value}',
          style: TextStyle(color: Colors.black, fontSize: 16.0),
        );
      },
      animation: _controller,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
