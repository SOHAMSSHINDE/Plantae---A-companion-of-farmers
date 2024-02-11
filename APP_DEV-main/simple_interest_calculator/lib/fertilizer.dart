import 'package:flutter/material.dart';

class Fertilizer_Calculator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // // TODO: implement createState
    // throw UnimplementedError();
    return Fertilizer_Calculator_State();
  }
}

class Fertilizer_Calculator_State extends State {
  bool _showContainer = false; // set initial state to hide container

  String message() {
    return _showContainer ? 'Hide Results' : 'Show Results';
  }

  @override
  Widget build(BuildContext context) {
    // // TODO: implement build
    // throw UnimplementedError();
    return Scaffold(
        appBar: AppBar(
          title: Text("Fertilizer Calculator"),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              getImage(),
              Padding(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                child: Text(
                  "Nutrient Quantities",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            labelText: 'N',
                            hintText: 'eg. 100',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            )),
                      ),
                    ),
                    Container(
                      width: 10,
                    ),
                    Expanded(
                        child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelText: 'P',
                          hintText: 'eg. 50',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                    )),
                    Container(
                      width: 10,
                    ),
                    Expanded(
                        child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelText: 'K',
                          hintText: 'eg. 50',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                    ))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5, bottom: 10),
                child: Text(
                  "Plot Size in Hectare",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Expanded(
                  child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: 'Plot Size',
                    hintText: 'In Hectare',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
              )),
              Padding(
                  padding: EdgeInsets.only(top: 15, bottom: 5),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text("Calculate"),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.amber[300],
                              shadowColor: Colors.amber[900]),
                        ),
                      ),
                      Container(
                        width: 40,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _showContainer = !_showContainer;
                              var mess = 'pressed';
                              // toggle the state of the container
                            });
                          },
                          child: Text(message()),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.blue[300],
                              shadowColor: Colors.blue[900]),
                        ),
                      ),
                    ],
                  )),
              SizedBox(height: 20),
              _showContainer
                  ? Container(
                      height: 100,
                      width: 100,
                      color: Colors.blue,
                    )
                  : Container(),
            ],
          ),
        ));
  }

  Widget getImage() {
    AssetImage assetImage = AssetImage('images/fertilizer.png');
    Image image = Image(
      image: assetImage,
      height: 125,
      width: 125,
    );

    return Container(
      child: image,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
    );
  }
}
