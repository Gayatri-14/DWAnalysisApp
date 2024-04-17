import 'package:flutter/material.dart';

class DoubleColumn extends StatefulWidget {
  _DoubleColumnState createState() => _DoubleColumnState();
}

class _DoubleColumnState extends State<DoubleColumn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Analysis"),
          foregroundColor: Colors.white,
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
          leading: BackButton(
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Center(
            child: Container(
                height: 510,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 12,
                          spreadRadius: 5,
                          color: Color.fromARGB(255, 226, 100, 142))
                    ]))));
  }
}

class valueOfAgg extends StatefulWidget {
  const valueOfAgg({super.key});

  _valueOfAgg createState() => _valueOfAgg();
}

// ignore: camel_case_types
class _valueOfAgg extends State<valueOfAgg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Analysis"),
          foregroundColor: Colors.white,
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
        ),
        body: Center(
            child: Container(
          height: 200,
          width: 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                    blurRadius: 12,
                    spreadRadius: 5,
                    color: Color.fromARGB(255, 226, 100, 142))
              ]),
          child: const Column(
            children: [
                Padding(
                  padding:  EdgeInsets.only(top: 50),
                  child: Center(
                    child: Text("The Value is", 
                    style: TextStyle(
                      
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold
                    ),
                    
                    ),
                  ),
                ),

            ],
          ),
        )));
  }
}
