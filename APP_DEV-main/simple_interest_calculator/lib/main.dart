import 'package:flutter/material.dart';

import 'fertilizer.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Simple Interest Calculator",
    home: Fertilizer_Calculator(),
    theme: ThemeData(
      primaryColor: Colors.amber[400],
      accentColor: Colors.amber[200],
    ),
  ));
}

class SIForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SIFormState();
  }
}

class SIFormState extends State {
  var _formkey = GlobalKey<FormState>();
  var currencie = ["Rupay", "Doller", "Other"];
  var _selected;
  var _currentSelected = "Rupay";
  var display_result = "";

  TextEditingController princcipelcontroller = TextEditingController();
  TextEditingController roicontroller = TextEditingController();
  TextEditingController termcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TextStyle textStyle = Theme.of(context).textTheme.title;
    return Scaffold(
        appBar: AppBar(
          title: Text("Simple Interest Calculator"),
        ),
        body: Form(
          key: _formkey,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                getImageAssets(),
                Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 5),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      controller: princcipelcontroller,
                      validator: (value) {
                        if ((value.toString()).isEmpty) {
                          return 'Please enter valid amount';
                        }
                      },
                      decoration: InputDecoration(
                          labelText: 'Principle',
                          hintText: 'eg. 12220',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                    )),
                Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: roicontroller,
                    validator: (value) {
                      if ((value.toString()).isEmpty) {
                        return 'Please Enter valid ROI';
                      }
                    },
                    decoration: InputDecoration(
                        labelText: 'Rate of Interest',
                        hintText: 'In precent',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: TextFormField(
                        keyboardType: TextInputType.number,
                        controller: termcontroller,
                        validator: (value) {
                          if ((value.toString()).isEmpty) {
                            return 'Plases Enter Valid Term';
                          }
                        },
                        decoration: InputDecoration(
                            labelText: 'Term',
                            hintText: 'eg. 2',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            )),
                      )),
                      Container(
                        width: 20,
                      ),
                      Expanded(
                        child: DropdownButton(
                          items: currencie.map((String dropdownitems) {
                            return DropdownMenuItem(
                                value: dropdownitems,
                                child: Text(dropdownitems));
                          }).toList(),
                          onChanged: (_selected) {
                            setState(() {
                              this._currentSelected = _selected.toString();
                            });
                          },
                          value: _currentSelected,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (_formkey.currentState!.validate()) {
                                this.display_result = _calculateReturn();
                              }
                            });
                          },
                          child: Text('Calculate'),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.amber,
                              shadowColor: Color.fromARGB(255, 215, 164, 12)),
                        ),
                      ),
                      Container(
                        width: 30,
                      ),
                      Expanded(
                          child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            reset();
                          });
                        },
                        child: Text("Reset"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green[200],
                          shadowColor: Colors.green[300],
                        ),
                      )),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Center(
                    child: Text(display_result),
                  ),
                )
              ],
            ),
          ),
        ));
  }

  Widget getImageAssets() {
    AssetImage assetImage = AssetImage('images/bank.jpg');
    Image image = Image(
      image: assetImage,
      width: 125,
      height: 125,
    );
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      child: image,
    );
  }

  String _calculateReturn() {
    double principal = double.parse(princcipelcontroller.text);
    double roi = double.parse(roicontroller.text);
    double term = double.parse(termcontroller.text);

    double total_Amount = principal + (roi * term * principal) / 100;
    String result =
        "After $term years, your investment will be $total_Amount $_currentSelected";

    return result;
  }

  void reset() {
    princcipelcontroller.text = "";
    roicontroller.text = "";
    termcontroller.text = "";
    _currentSelected = currencie[0];
    display_result = "";
  }
}

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   bool _showContainer = false; // set initial state to hide container

//   void _toggleContainer() {
//     setState(() {
//       _showContainer = !_showContainer;
//       // toggle the state of the container
//     });
//   }
//   String message(){
//       return _showContainer?'hide';
//   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: Scaffold(
// //         appBar: AppBar(
// //           title: Text('Hide/Show Container Example'),
// //         ),
// //         body: Center(
// //           child: Column(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             children: [
// //               ElevatedButton(
// //                 onPressed: _toggleContainer,
// //                 child: Text(this.),
// //               ),
// //               SizedBox(height: 20),
// //               _showContainer
// //                   ? Container(
// //                       height: 100,
// //                       width: 100,
// //                       color: Colors.blue,
// //                     )
// //                   : Container(),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
