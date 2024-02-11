// import 'dart:js';
import 'package:js/js.dart';

import 'package:flutter/material.dart';

class heal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // // TODO: implement build
    // throw UnimplementedError();
    return Material(
        color: Colors.white,
        child: Container(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.all(15),
                      child: const Text(
                        'Heal Your Crop',
                        style: TextStyle(
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: Color.fromARGB(255, 5, 5, 5)),
                      ))
                ],
              ),
              Container(
                  // alignment: Alignment.topLeft,
                  height: 180,
                  width: 300,
                  color: Color.fromARGB(255, 255, 249, 249),
                  margin: EdgeInsets.all(10),
                  child: Column(children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.all(20),
                          child: Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.all(10),
                                child: const Image(
                                  image: AssetImage('leavepicture.jpg'),
                                  height: 40,
                                  width: 40,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(10),
                                child: const Image(
                                  image: AssetImage('bracekt.jpg'),
                                  height: 20,
                                  width: 20,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(10),
                                child: const Image(
                                  image: AssetImage('diagnosis.jpg'),
                                  height: 40,
                                  width: 40,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(10),
                                child: const Image(
                                  image: AssetImage('bracekt.jpg'),
                                  height: 20,
                                  width: 20,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(10),
                                child: const Image(
                                  image: AssetImage('treatment.jpg'),
                                  height: 40,
                                  width: 40,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          color: Colors.blue,
                          height: 40,
                          width: 220,
                          margin: EdgeInsets.fromLTRB(40, 10, 0, 0),
                          padding: EdgeInsets.all(10),
                          child: const Text(
                            'select the picture',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(fontFamily: 'raleway', fontSize: 18),
                          ),
                        ),
                      ],
                    )
                  ])),
              // Container(
              //   height: 180,
              //   width: 300,
              //   alignment: Alignment.topLeft,

              // ),
              Column(children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.all(15),
                        child: const Text(
                          'Calculate Fertilizers',
                          style: TextStyle(
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              color: Colors.black),
                        )),
                  ],
                ),
              ]),
              calculation(),
              // getListView(),
              calculateFertilizer()
            ],
          ),
        ));
  }
}

class calculation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Container(
      height: 60,
      width: 300,
      child: Row(
        children: <Widget>[
          Container(
            height: 40,
            width: 220,
            alignment: Alignment.center,
            margin: const EdgeInsets.fromLTRB(15, 0, 15, 15),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.amber,
              ),
              child: const Text(
                'Calculate fertilizers',
                style: TextStyle(
                    fontFamily: 'Raleway', color: Colors.white, fontSize: 20),
              ),
              onPressed: () {
                // ClaculateFertilizer(context);
              },
            ),
          ),
        ],
      ),
    );
  }

  void ClaculateFertilizer(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text("fertilizer calculated Successfully"),
      content: Text(NPK()),
    );
    showDialog(
        context: context,
        builder: (BuildContext) {
          return alertDialog;
        });
  }

  String NPK() {
    int n = 10;
    int p = 20;
    int k = 30;
    return "NPK : ${(n + p + k) / 3}kg";
  }
}

class calculateFertilizer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // // TODO: implement createState
    // throw UnimplementedError();
    return fertilizerCalculation();
  }
}

class fertilizerCalculation extends State<calculateFertilizer> {
  String plant = "";
  @override
  Widget build(BuildContext context) {
    // // TODO: implement build
    // throw UnimplementedError();
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            height: 40,
            width: 256,
            child: TextField(
              onSubmitted: (String str) {
                setState(() {
                  plant = str;
                });
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "your plant name is $plant",
              style: TextStyle(fontFamily: 'Raleway', fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}

class long_List extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // // TODO: implement build
    // throw UnimplementedError();
    return getListview();
  }

  // List<String> getlistelement() {
  //   var items = List<String>.generate(20, (counter) => "item $counter");
  //   return items;
  // }

  Widget getListview() {
    // var listitems = getlistelement();
    var listview = ListView.builder(
        itemCount: 25,
        itemBuilder: (context, index) {
          // debugPrint("$index");
          return ListTile(
              leading: const Icon(Icons.arrow_right),
              title: Text("list item $index"),
              onTap: () {
                showSnackBar(context, "list item $index is press");
              });
        });
    return listview;
  }
}

void showSnackBar(BuildContext context, String item) {
  var snakBar = SnackBar(
    content: Text("$item"),
    action: SnackBarAction(
        label: "UNDO",
        onPressed: () {
          debugPrint("Dummy action");
        }),
  );
  ScaffoldMessenger.of(context).showSnackBar(snakBar);
}
