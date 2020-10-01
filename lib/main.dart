import 'package:flutter/material.dart';
import 'package:flutter_app/screens/note_list.dart';
import 'package:flutter_app/screens/note_detail.dart';

void main() {
	runApp(MyApp());
}

class MyApp extends StatelessWidget {

	@override
  Widget build(BuildContext context) {

    return MaterialApp(
	    title: 'NoteKeeper',
	   
	    theme: ThemeData(
		    primarySwatch: Colors.deepPurple
	    ),
	    home: NoteList(),
    );
  }
}
