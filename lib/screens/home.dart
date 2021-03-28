import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int counter = 50;

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Container(
        alignment: Alignment.topLeft,
        color: Colors.black,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            TextButton(
                  onPressed: (){
                    setState(() {
                      counter++;
                      print(counter);
                    });
                  },
                  child: Text("Preventivo / Manutenção",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white
                    ),
                  ),
                ),
          ],
        ),
        ),
    );
  }
}
