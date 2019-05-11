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
    //var bankData = Provider.of<BankData>(context);
    return Container();

     /* ListView.builder(
        itemCount: bankData.bankUsers.length,
        itemBuilder: (context, position) {
          return  Consumer<SinglePerson>( builder: (context, value,_)=> Text("oka:  " + value.name));
        });*/
  }
}
