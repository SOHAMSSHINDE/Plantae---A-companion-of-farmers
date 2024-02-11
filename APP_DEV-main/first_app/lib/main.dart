import 'package:flutter/material.dart';
import 'first_screen.dart';
import 'home.dart';
import 'dropdown.dart';

void main() => runApp(myAPP());

class myAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return MaterialApp(
      title: 'Flutter APP',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'app bar',
            style:
                TextStyle(fontFamily: 'Raleway', fontWeight: FontWeight.w700),
          ),
          shadowColor: const Color.fromARGB(255, 6, 7, 7),
        ),
        body: dropDownItems(),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              debugPrint("FAB print");
            },
            child: Icon(Icons.add),
            tooltip: "add one more"),
      ),
    );
  }
}

// List<String> getListElements() {

// 	var items = List<String>.generate(1000, (counter) => "Item $counter");
// 	return items;
// }

// Widget getListView() {

// 	var listItems = getListElements();

// 	var listView = ListView.builder(
// 			itemBuilder: (context, index) {

// 				return ListTile(
// 					leading: Icon(Icons.arrow_right),
// 					title: Text(listItems[index]),
// 					onTap: () {
// 						debugPrint('${listItems[index]} was tapped');
// 					},
// 				);
// 			}
// 	);

// 	return listView;
// }

