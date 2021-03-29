import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: double.infinity,
                  child:
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 62, 43, 100)
                      ),
                          onPressed: (){
                          Navigator.of(context).pushNamed('/manut');
                          },
                          child: Text("Preventivo / Manutenção",
                            style: TextStyle(
                                fontSize: 25,
                            ),
                          ),
                        ),
                ),
                Padding(padding: EdgeInsets.all(5)),
                Container(
                  height: 50,
                  width: double.infinity,
                  child:
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 62, 43, 100)
                      ),
                      onPressed: (){
                        Navigator.of(context).pushNamed('/manut');
                      },
                      child: Text("Inspeção TAE",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                ),
              ],
        ),
      ),
    );
  }
}
