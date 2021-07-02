import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AddData extends StatefulWidget {
  @override
  _AddDataState createState() => new _AddDataState();
}

class _AddDataState extends State<AddData> {


TextEditingController controllerCode = new TextEditingController();
TextEditingController controllerName = new TextEditingController();
TextEditingController controllerPrice = new TextEditingController();
TextEditingController controllerStock = new TextEditingController();

void addData(){
  var url="http://10.0.2.2/my_store/adddata.php";

  http.post(url, body: {
    "id": controllerCode.text,
    "username": controllerName.text,
    "email": controllerPrice.text,
    "phone": controllerStock.text
    "skill": controllerCode.text,
    "blood group": controllerName.text,
    "address": controllerPrice.text
  });
}

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("ADD DATA"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            new Column(
              children: <Widget>[
                new TextField(
                  controller: controllerCode,
                  decoration: new InputDecoration(
                      hintText: "id", labelText: "id"),
                ),
                new TextField(
                  controller: controllerName,
                  decoration: new InputDecoration(
                      hintText: "username", labelText: "username"),
                ),
                new TextField(
                  controller: controllerPrice,
                  decoration: new InputDecoration(
                      hintText: "email", labelText: "email"),
                ),
          hintText: "phone", labelText: "phone"),
    ),
    new TextField(
    controller: controllerName,
    decoration: new InputDecoration(
    hintText: "skill", labelText: "skill"),
    ),
    new TextField(
    controller: controllerPrice,
    decoration: new InputDecoration(
    hintText: "blood group", labelText: "blood group"),
    ),
                new TextField(
                  controller: controllerStock,
                  decoration: new InputDecoration(
                      hintText: "address", labelText: "address"),
                ),
                new Padding(
                  padding: const EdgeInsets.all(10.0),
                ),
                new RaisedButton(
                  child: new Text("ADD DATA"),
                  color: Colors.blueAccent,
                  onPressed: () {
                    addData();
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
