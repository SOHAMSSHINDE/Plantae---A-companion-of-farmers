import 'package:flutter/material.dart';

class dropDownItems extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    //   // TODO: implement createState
    //   throw UnimplementedError();
    return DropDownBox();
  }
}

class DropDownBox extends State {
  var _slectedOption;
  var _plantName = ['lily', 'Jasmine', 'lotus'];
  var cureentslectedOption = "lily";

  var vegitable = ['potato', 'tomato', 'brinjal'];
  var _selected;
  var _currentSelected = "potato";

  @override
  Widget build(BuildContext context) {
    // // TODO: implement build
    // throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
        title: Text("dropdownButton"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            DropdownButton<String>(
              items: _plantName.map((String dropdownitems) {
                return DropdownMenuItem(
                  value: dropdownitems,
                  child: Text(dropdownitems),
                );
              }).toList(),
              onChanged: (_slectedOption) {
                setState(() {
                  this.cureentslectedOption = _slectedOption.toString();
                });
              },
              value: cureentslectedOption,
            ),
            DropdownButton<String>(
              items: vegitable.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (_selected) {
                setState(() {
                  this._currentSelected = _selected.toString();
                  // debugPrint(_currentSelected);
                });
              },
              value: _currentSelected,
            ),
          ],
          
        ),
      ),
    );
  }
}
