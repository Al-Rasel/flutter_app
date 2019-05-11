import 'package:flutter/cupertino.dart';

import 'package:provider/provider.dart';

import 'MyCount.dart';

class TextOnly extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<MyCount>(
        builder: (context, counter, _) => Text("hlw world "+counter.myCount.toString()));
  }
}
