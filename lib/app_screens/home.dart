import 'package:flutter/material.dart';


class Home extends StatelessWidget {

	@override
  Widget build(BuildContext context) {

    return Center(
	    child: Container(
		    alignment: Alignment.center,
		    color: Colors.deepPurple,
//		    width: 200.0,
//		    height: 100.0,
//		    margin: EdgeInsets.only(left: 35.0, top: 50.0),
		    child: Text("Flight", textDirection: TextDirection.ltr),
	    )
    );
  }
}