// 6488045 Supithcha Jongphoemwatthanaphon
// https://www.freecodecamp.org/news/an-introduction-to-flutter-the-basics-9fe541fd39e2/

import 'package:flutter/widgets.dart';

main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 60.0,
          horizontal: 80.0,
        ),
        color: Color.fromARGB(255, 252, 252, 252),
        child: Content(),
      ),
    );
  }
}

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Counter('My ID: 6488045'),
        Counter('My name: Supithcha Jongphoemwatthanaphon'),
        Counter('Project name: Happy Tails'),
        Counter('Members ID: 6488021, 6488045, 6488049, 6488226'),
      ],
    );
  }
}

class Counter extends StatefulWidget {
  final String _name;
  Counter(this._name);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      padding: EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(255, 44, 129, 58)),
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // [widget] is the property of the State class that stores
          // the instance of the [StatefulWidget] ([Counter] in our case)
          _CounterLabel(widget._name),
          _CounterButton(
            count,
            onPressed: () {
              setState(() {
                ++count;
              });
            },
          ),
        ],
      ),
    );
  }
}

class _CounterLabel extends StatelessWidget {
  static const textStyle = TextStyle(
    color: Color(0xFF000000),
    fontSize: 26.0,
  );

  final String _label;
  _CounterLabel(this._label);

  @override
  Widget build(BuildContext context) {
    return Text(
      _label,
      style: _CounterLabel.textStyle,
    );
  }
}

class _CounterButton extends StatelessWidget {
  final count;
  final onPressed;
  _CounterButton(this.count, {@required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed, 
      onLongPress: () { print('Long press');},
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 6.0),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 147, 172, 226),
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Center(
          child: Text(
            '$count',
            style: TextStyle(fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}