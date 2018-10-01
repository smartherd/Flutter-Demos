import 'package:flutter/material.dart';
import './app_screens/home.dart';

void main() {
  runApp(MaterialApp(

	  title: "Exploring UI widgets",

	  home: Scaffold(
      appBar: AppBar(title: Text("Long List"),),
      body: getListView(),
      floatingActionButton: FloatingActionButton(
	      onPressed: () {
	      	debugPrint("FAB clicked");
	      },
	      child: Icon(Icons.add),
	      tooltip: 'Add One More Item',
      ),
    ),

  ));
}

void showSnackBar(BuildContext context, String item) {
	var snackBar = SnackBar(
		content: Text("You just tapped $item"),
		action: SnackBarAction(
				label: "UNDO",
				onPressed: () {
					debugPrint('Performing dummy UNDO operation');
				}
		),
	);

	Scaffold.of(context).showSnackBar(snackBar);
}

List<String> getListElements() {

	var items = List<String>.generate(1000, (counter) => "Item $counter");
	return items;
}

Widget getListView() {

	var listItems = getListElements();

	var listView = ListView.builder(
			itemBuilder: (context, index) {

				return ListTile(
					leading: Icon(Icons.arrow_right),
					title: Text(listItems[index]),
					onTap: () {
						showSnackBar(context, listItems[index]);
					},
				);
			}
	);

	return listView;
}
