import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/MyCount.dart';

class SimpleList extends StatefulWidget {
  @override
  _SimpleListState createState() => _SimpleListState();
}

class _SimpleListState extends State<SimpleList> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
   var area = Provider.of<Area>(context);
    return
   ListView.builder(
        itemCount: area.list.length,
        itemBuilder: (context, position) {
          return   Text("oka:  " + area.list[position].name);
        });
  }
}
