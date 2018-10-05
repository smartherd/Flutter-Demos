import 'package:flutter/material.dart';

void main() {

	runApp(
		MaterialApp(
			title: "Sateful App Example",
			home: FavoriteCity(),
		)
	);
}

class FavoriteCity extends StatefulWidget {

	@override
  State<StatefulWidget> createState() {
    return _FavoriteCityState();
  }
}

class _FavoriteCityState extends State<FavoriteCity> {

	String nameCity = "";

	@override
  Widget build(BuildContext context) {

		debugPrint("Favorite City widget is created");

    return Scaffold(
	    appBar: AppBar(
		    title: Text("Stateful App Example"),
	    ),
	    body: Container(
		    margin: EdgeInsets.all(20.0),
		    child: Column(
			    children: <Widget>[
			    	TextField(
					    onSubmitted: (String userInput) {
					    	setState(() {
					    		debugPrint("set State is called, this tells framwork to redraw the FavCity widget");
							    nameCity = userInput;
					    	});
					    },
				    ),
				    Padding(
						    padding: EdgeInsets.all(30.0),
						    child: Text(
					        "Your bext city is $nameCity",
					        style: TextStyle(fontSize: 20.0),
				    ))
			    ],
		    ),
	    ),
    );
  }
}
