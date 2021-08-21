import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('Dados'),
        backgroundColor: Colors.teal,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal.shade400,
      padding: EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image(
                  image: AssetImage('assets/images/dados/dice_1.png'),
                  width: 150.0,
                ),
                Image(
                  image: AssetImage('assets/images/dados/dice_1.png'),
                  width: 150.0,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          FloatingActionButton(
            backgroundColor: Colors.black,
            onPressed: null,
            child: Icon(Icons.refresh),
          )
        ],
      ),
    );
  }
}
