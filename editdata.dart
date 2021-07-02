import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import './main.dart';

class EditData extends StatefulWidget {
  final List list;
  final int index;

  EditData({this.list, this.index});

  @override
  _EditDataState createState() => new _EditDataState();
}

class _EditDataState extends State<EditData> {

  TextEditingController controllerId;
  TextEditingController controllerUsername;
  TextEditingController controllerEmail;
  TextEditingController controllerPhone;
  TextEditingController controllerSkill;
  TextEditingController controllerBlood Group;
  TextEditingController controllerAddress;


  void editData() {
    var url="http://10.0.2.2/my_store/editdata.php";
    http.post(url,body: {
      "id": widget.list[widget.index]['id'],
      "itemcode": controllerUsername.text,
      "itemname": controllerEmail.text,
      "price": controllerPhone.text,
      "stock": controllerSkill.text
      "itemcode": controllerBlood group.text,
      "itemname": controllerAddress.text
    });
  }


  @override
    void initState() {
      controllerId= new TextEditingController(text: widget.list[widget.index]['id'] );
      controllerUsername= new TextEditingController(text: widget.list[widget.index]['username'] );
      controllerEmail= new TextEditingController(text: widget.list[widget.index]['email'] );
      controllerPhone= new TextEditingController(text: widget.list[widget.index]['phone']);
      controllerSkill= new TextEditingController(text: widget.list[widget.index]['skill'] );
      controllerBlood group= new TextEditingController(text: widget.list[widget.index]['blood group'] );
      controllerAddress= new TextEditingController(text: widget.list[widget.index]['address'] );
      super.initState();
    }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("EDIT DATA"),
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
                new TextField(
                  controller: controllerStock,
                  decoration: new InputDecoration(
                      hintText: "phone", labelText: "phone"),
                ),
                new Padding(
                  padding: const EdgeInsets.all(10.0),
                ),
                new TextField(
                  controller: controllerCode,
                  decoration: new InputDecoration(
                      hintText: "skill", labelText: "skill"),
                ),
                new TextField(
                  controller: controllerName,
                  decoration: new InputDecoration(
                      hintText: "blood group", labelText: "blood group"),
                ),
                new TextField(
                  controller: controllerPrice,
                  decoration: new InputDecoration(
                      hintText: "address", labelText: "address"),
                ),
                new Padding(
                  padding: const EdgeInsets.all(10.0),
                ),
                new RaisedButton(
                  child: new Text("EDIT DATA"),
                  color: Colors.blueAccent,
                  onPressed: () {
                    editData();
                    Navigator.of(context).push(
                      new MaterialPageRoute(
                        builder: (BuildContext context)=>new Home()
                      )
                    );
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
