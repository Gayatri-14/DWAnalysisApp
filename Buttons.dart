// ignore: file_names

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:project/navigate.dart';

class FirstButtonHover extends StatefulWidget {
  final int index;
  final String title;
  const FirstButtonHover(this.index, this.title, {super.key});
  @override
  // ignore: library_private_types_in_public_api
  _FirstButtonHoverState createState() =>
      _FirstButtonHoverState(this.index, this.title);
}

class _FirstButtonHoverState extends State<FirstButtonHover> {
  final int index;
  final String title;
  _FirstButtonHoverState(this.index, this.title);
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (f) {
        setState(() {
          isHover = true;
        });
      },
      onExit: (f) {
        setState(() {
          isHover = false;
        });
      },
      child: AnimatedContainer(
        margin: EdgeInsets.symmetric(vertical: isHover ? 3 : 0),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  blurRadius: 80,
                  spreadRadius: 5,
                  color: isHover
                      ? Color.fromARGB(22, 32, 33, 31).withOpacity(0.4)
                      : Colors.transparent)
            ],
            borderRadius: BorderRadius.only(
                topRight: (isHover || index == 0)
                    ? const Radius.circular(60)
                    : const Radius.circular(0),
                topLeft: (isHover || index == 0)
                    ? const Radius.circular(60)
                    : const Radius.circular(0),
                bottomLeft: (isHover || index == 5)
                    ? const Radius.circular(60)
                    : const Radius.circular(0),
                bottomRight: (isHover || index == 5)
                    ? const Radius.circular(60)
                    : const Radius.circular(0))),
        duration: const Duration(milliseconds: 200),
        width: 300,
        height: isHover ? 70 : 65,
        child: addElement(),
      ),
    );
  }

  addElement() {
    return Row(
      children: [
        Container(
          width: 60,
          height: isHover ? 80 : 60,
          child: Center(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: isHover ? 20 : 30,
              height: isHover ? 20 : 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: isHover ? Colors.lightGreen : Colors.grey[200]),
              child: AnimatedDefaultTextStyle(
                textAlign: TextAlign.center,
                duration: const Duration(milliseconds: 15),
                style: TextStyle(
                    height: 2,
                    fontSize: isHover ? 9 : 14,
                    color: isHover ? Colors.white : Colors.grey[700],
                    fontWeight: isHover ? FontWeight.bold : FontWeight.normal),
                child: Text(index.toString()),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class AnotherButton extends StatefulWidget {
  const AnotherButton({super.key});

  @override
  _AnotherButtonState createState() => _AnotherButtonState();
}

class _AnotherButtonState extends State<AnotherButton> {
  var buttonstring = "";
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
                ]),
            child: Column(
              children: [
                const SizedBox(height: 100),
                TextButton(
                  onPressed: () => {
                    buttonstring = "first",
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const caluculatePage()))
                  },
                  child: Container(
                    width: 240.0,
                    height: 42.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.0),
                        color: Colors.deepPurple),
                    child: const Center(
                      child: Text(
                        'First DataSet',
                        style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 18,
                          color: Colors.white,
                          height: 1,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 100),
                TextButton(
                  onPressed: () => {
                    buttonstring = "second",
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const caluculatePage()))
                  },
                  child: Container(
                    width: 240.0,
                    height: 42.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.0),
                        color: Colors.deepPurple),
                    child: const Center(
                      child: Text(
                        'Second DataSet',
                        style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 18,
                          color: Colors.white,
                          height: 1,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class ButtonHover extends StatefulWidget {
  final int index;
  final String title;
  const ButtonHover(this.index, this.title, {super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ButtonHoverState createState() => _ButtonHoverState(this.index, this.title);
}

class _ButtonHoverState extends State<ButtonHover> {
  final int index;
  final String title;
  _ButtonHoverState(this.index, this.title);
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        onEnter: (f) {
          setState(
            () {
              isHover = true;
            },
          );
        },
        onExit: (f) {
          setState(() {
            isHover = false;
          });
        },
        child: AnimatedContainer(
          margin: EdgeInsets.symmetric(vertical: isHover ? 3 : 0),
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    blurRadius: 12,
                    spreadRadius: 5,
                    color: isHover
                        ? Colors.lightBlue.withOpacity(0.4)
                        : Colors.transparent)
              ],
              borderRadius: BorderRadius.only(
                  topRight: (isHover || index == 0)
                      ? const Radius.circular(60)
                      : const Radius.circular(0),
                  topLeft: (isHover || index == 0)
                      ? const Radius.circular(60)
                      : const Radius.circular(0),
                  bottomLeft: (isHover || index == 5)
                      ? const Radius.circular(60)
                      : const Radius.circular(0),
                  bottomRight: (isHover || index == 5)
                      ? const Radius.circular(60)
                      : const Radius.circular(0))),
          duration: const Duration(milliseconds: 200),
          width: 300,
          height: isHover ? 70 : 65,
          child: addElement(),
        ));
  }

  addElement() {
    return Row(
      children: [
        Container(
          width: 60,
          height: isHover ? 80 : 60,
          child: Center(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: isHover ? 20 : 30,
              height: isHover ? 20 : 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: isHover ? Colors.lightBlue : Colors.grey[200]),
              child: AnimatedDefaultTextStyle(
                  textAlign: TextAlign.center,
                  duration: const Duration(milliseconds: 15),
                  style: TextStyle(
                      height: 2,
                      fontSize: isHover ? 9 : 14,
                      color: isHover ? Colors.white : Colors.grey[700],
                      fontWeight:
                          isHover ? FontWeight.bold : FontWeight.normal),
                  child: Text(index.toString())),
            ),
          ),
        )
      ],
    );
  }
}

class PlotData extends StatefulWidget {
  const PlotData({super.key});
  @override
  _plotDataState createState() => _plotDataState();
}

class _plotDataState extends State<PlotData> {
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
              ]),
          child: Column(children: [
            const SizedBox(
              height: 50,
            ),
            Container(
              width: 240.0,
              height: 42.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.0),
                  color: Colors.deepPurple),
              child: const Center(
                child: Text(
                  'Plotting Graphs',
                  style: TextStyle(
                    fontFamily: 'Arial',
                    fontSize: 18,
                    color: Colors.white,
                    height: 1,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(height: 100),
            TextButton(
              onPressed: () {},
              child: Container(
                width: 240.0,
                height: 42.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.0),
                    color: Colors.deepPurple),
                child: const Center(
                  child: Text(
                    'Next',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 18,
                      color: Colors.white,
                      height: 1,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class caluculatePage extends StatefulWidget {
  const caluculatePage({super.key});

  @override
  _caluculatePageState createState() => _caluculatePageState();
}

class _caluculatePageState extends State<caluculatePage> {
  List<String> data = [];
  String dropDownValue = "";
  var aggregateItems = ["Mean", "Sum", "Median", "Mode", "First", "Last"];
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    var getString = _AnotherButtonState().buttonstring;

    final response = await http
        .get(Uri.parse('http://127.0.0.1:5000/api/columns/first'));
    if (response.statusCode == 200) {
      setState(() {
        data = jsonDecode(response.body).toList();
        dropDownValue = data[0];
      });
    } else {
      return;
    }
  }

  String anotherDropDownValue = "Mean";

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
              ]),
          child: Column(children: [
            const SizedBox(height: 50),
            Container(
              width: 240,
              height: 42.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.0),
                  color: Colors.deepPurple),
              child: const Center(
                child: Text(
                  'Select Column Name',
                  style: TextStyle(
                    fontFamily: 'Arial',
                    fontSize: 18,
                    color: Colors.white,
                    height: 1,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(height: 50),
            Container(
              height: 42,
              width: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: const Border(bottom: BorderSide.none),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 12, spreadRadius: 5, color: Colors.grey)
                  ]),
              child: DropdownButton(
                  isExpanded: true,
                  value: dropDownValue,
                  alignment: Alignment.bottomRight,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  items: data.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          items,
                          style: const TextStyle(
                              color: Colors.black,
                              decoration: TextDecoration.none),
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(
                      () {
                        dropDownValue = newValue!;
                      },
                    );
                  }),
            ),
            const SizedBox(height: 70),
            Container(
              width: 240,
              height: 42.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.0),
                  color: Colors.deepPurple),
              child: const Center(
                child: Text(
                  'Select Aggregate',
                  style: TextStyle(
                    fontFamily: 'Arial',
                    fontSize: 18,
                    color: Colors.white,
                    height: 1,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(height: 50),
            Container(
              width: 120,
              height: 42,
              decoration: BoxDecoration(
                  border: const Border(bottom: BorderSide.none),
                  borderRadius: BorderRadius.circular(24),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 12, spreadRadius: 5, color: Colors.grey)
                  ]),
              child: DropdownButton(
                  isExpanded: true,
                  alignment: Alignment.bottomRight,
                  value: anotherDropDownValue,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  items: aggregateItems.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          items,
                          style: const TextStyle(
                              color: Colors.black,
                              decoration: TextDecoration.none),
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(
                      () {
                        anotherDropDownValue = newValue!;
                      },
                    );
                  }),
            ),
            const SizedBox(height: 40),
            Container(
              height: 42,
              width: 140,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.0),
                  color: Colors.deepPurple),
              child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const valueOfAgg()));
                  },
                  child: const Text("Next",
                      style: TextStyle(color: Colors.white, fontSize: 18))),
            )
          ]),
        )));
  }
}
