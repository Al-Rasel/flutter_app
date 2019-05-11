import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'MyCount.dart';

class ButtonForIncrease extends StatefulWidget {
  @override
  _ButtonForIncreaseState createState() => _ButtonForIncreaseState();
}

class _ButtonForIncreaseState extends State<ButtonForIncrease> {
  @override
  Widget build(BuildContext context) {
    final myCount = Provider.of<MyCount>(context);
    final bankDat = Provider.of<Area>(context);

    return Row(
      children: <Widget>[
        RaisedButton(
            child: Text("add one"),
            onPressed: () {
              myCount.myCount++;

              bankDat.addUser("hooo");
            }),
        RaisedButton(
          child: Text("Reset value"),
          onPressed: () => myCount.myCount = 0,
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }
}

class ButtonForDecrease extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<MyCount>(
      builder: (context, count, _) {
        return Row(
          children: <Widget>[
            RaisedButton(
              child: Text("remove one"),
              onPressed: () => count.myCount--,
            ),
            RaisedButton(
              child: Text("muliple by three"),
              onPressed: () {
                count.myCount = count.myCount * 3;
              },
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        );
      },
    );
  }
}
