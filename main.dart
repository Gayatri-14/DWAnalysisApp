// ignore_for_file: library_private_types_in_public_api


import 'package:flutter/material.dart';
import 'package:project/Buttons.dart';
import 'package:project/navigate.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Analysis App',
      theme: ThemeData(primarySwatch: Colors.deepPurple,
      useMaterial3: true,
      ),
      showSemanticsDebugger: false,
      debugShowCheckedModeBanner: false,
  
      home: const HomeApplication(),
    );
  }
}

class HomeApplication extends StatelessWidget {
  const HomeApplication({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Analysis"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CarouselSlider(
                
                items: [
                  Center(

                        child: Card(
                          elevation: 80,
                          child: Container(
                              alignment: Alignment.center,
                              height: 510,
                              width: 300,
                              
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                      image: ExactAssetImage(
                                          'assets/images/homepage1.jpg'),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(1),
                                  color: Colors.white,
                                  
                                  ),
                              child: const Stack(
                                children: [
                                  Positioned(
                                      left: 24,
                                      bottom: 18,
                                      child: Text(
                                        "First we have studied the datasets available \n in drawer menu",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontStyle: FontStyle.italic,
                                            color: Colors.white),
                                      ) //Home page navigate here
                                        
                                      )
                                ],
                              )),
                        ),
                      ),
                  Center(
                      child: Card(
                        elevation: 80,
                        child: Container(
                            height: 510,
                            width: 300,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: ExactAssetImage(
                                        'assets/images/homepage2.jpg'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(1),
                                color: Colors.white,
                                ),
                            child: const Stack(
                              children: [
                                Positioned(
                                    left: 40,
                                    bottom: 30,
                                    child: Text(
                                      "Showing the data visually in the Graph",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontStyle: FontStyle.italic,
                                          color: Colors.black),
                                    ) //Home page navigate here
                                      
                                    )
                              ],
                            )),
                      )),
                  Center(
                      child: Card(
                        elevation: 80,
                        child: Container(
                            height: 510,
                            width: 300,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: ExactAssetImage(
                                        'assets/images/homepage3.jpg'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(1),
                                color: Colors.black,
                                ),
                            child: const Stack(
                              children: [
                                Positioned(
                                    left: 50,
                                    bottom: 30,
                                    child: Text(
                                      "Performing the Statistical Analysis",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontStyle: FontStyle.italic,
                                          color: Colors.black),
                                    ) //Home page navigate here
                                      
                                    )
                              ],
                            )),
                      ))
                ],
                options: CarouselOptions(
                  padEnds: true,
                  height: 510,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
              ),
            ),
          ),
        )
      ]),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
                backgroundColor: Colors.deepPurple),
            BottomNavigationBarItem(
                icon: Icon(Icons.vrpano_outlined),
                label: "Plots",
                backgroundColor: Colors.deepPurple),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "Search",
                backgroundColor: Colors.deepPurple)
          ],
          type: BottomNavigationBarType.fixed,
          elevation: 5,
          iconSize: 40,
          onTap: (int index) {
            if (index == 0) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const HomeApplication()));
            }
            if (index == 1) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const PlotData()));
            }
            if (index == 2) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SearchFile()));
            }
          },
          selectedItemColor: Colors.black),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage('assets/images/boxcover.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 4,
                      bottom: 8,
                      child: Text(
                        "Analysis",
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    ),
                  ],
                )),
            const ListTile(),
            ListTile(
              title: const Text("Download Data"),
              hoverColor: Colors.deepPurple,
              leading: const Icon(Icons.download),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DownloadFiles()));
              },
            ),
            const ListTile(),
            ListTile(
              title: const Text("DataColumns 1"),
              hoverColor: Colors.deepPurple,
              leading: const Icon(Icons.list),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const FirstPage()));
              },
            ),
            const ListTile(),
            ListTile(
              hoverColor: Colors.deepPurple,
              title: const Text("DataColumns 2"),
              leading: const Icon(Icons.list),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AnotherPage()));
              },
            ),
            const ListTile(),
            ListTile(
              hoverColor: Colors.deepPurple,
              title: const Text("Contact Us"),
              leading: const Icon(Icons.mail),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const NextPage()));
              },
            )
          ],
        ),
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  const NextPage({super.key});

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
                const SizedBox(height: 50),
                Container(
                  width: 240.0,
                  height: 42.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24.0),
                      color: Colors.deepPurple),
                  child: const Center(
                    child: Text(
                      'Send SMS',
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
                const SizedBox(
                  height: 50,
                ),
                const ElevatedButton(
                    onPressed: _sendingSMS, child: Icon(Icons.sms)),
                const SizedBox(height: 100),
                Container(
                  width: 240.0,
                  height: 42.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24.0),
                      color: Colors.deepPurple),
                  child: const Center(
                    child: Text(
                      'Send Mail',
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
                const SizedBox(
                  height: 50,
                ),
                const ElevatedButton(
                    onPressed: _sendingMails, child: Icon(Icons.mail))
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Home",
                  backgroundColor: Colors.deepPurple),
              BottomNavigationBarItem(
                  icon: Icon(Icons.vrpano_outlined),
                  label: "Plots",
                  backgroundColor: Colors.deepPurple),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: "Search",
                  backgroundColor: Colors.deepPurple)
            ],
            type: BottomNavigationBarType.fixed,
            elevation: 5,
            iconSize: 40,
            onTap: (int index) {
              if (index == 0) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeApplication()));
              }
              if (index == 1) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const PlotData()));
              }
              if (index == 2) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SearchFile()));
              }
            },
            selectedItemColor: Colors.black));
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  var array = ["1", "2", "3", "4", "5", "6", "7"];
  @override
  Widget build(BuildContext context) {
    firstButtonUI() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
        child: Column(
            children: List.generate(array.length, (int i) {
          return FirstButtonHover(i + 1, array[i]);
        },),),
      );
    }

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
          child: SingleChildScrollView(
            child: Center(
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
                child: firstButtonUI(),
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Home",
                  backgroundColor: Colors.deepPurple),
              BottomNavigationBarItem(
                  icon: Icon(Icons.vrpano_outlined),
                  label: "Plots",
                  backgroundColor: Colors.deepPurple),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: "Search",
                  backgroundColor: Colors.deepPurple)
            ],
            type: BottomNavigationBarType.fixed,
            elevation: 5,
            iconSize: 40,
            onTap: (int index) {
              if (index == 0) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeApplication()));
              }
              if (index == 1) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const PlotData()));
              }
              if (index == 2) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SearchFile()));
              }
            },
            selectedItemColor: Colors.black));
  }
}

class DownloadFiles extends StatefulWidget {
  const DownloadFiles({super.key});
  @override
  _DownloadFilesState createState() => _DownloadFilesState();
}

class _DownloadFilesState extends State<DownloadFiles> {
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
                  const SizedBox(height: 50), //Navigate here comment
                  Container(
                    width: 240.0,
                    height: 42.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.0),
                        color: Colors.deepPurple),
                    child: const Center(
                      child: Text(
                        'Dataset1',
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
                  const ElevatedButton(
                      onPressed: _sendingMails, child: Icon(Icons.download)),
                  const SizedBox(height: 100),
                  Container(
                    width: 240.0,
                    height: 42.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.0),
                        color: Colors.deepPurple),
                    child: const Center(
                      child: Text(
                        'Dataset2',
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
                  const ElevatedButton(
                      onPressed: _sendingSMS, child: Icon(Icons.download))
                ],
              )),
        ),
        bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Home",
                  backgroundColor: Colors.deepPurple),
              BottomNavigationBarItem(
                  icon: Icon(Icons.vrpano_outlined),
                  label: "Plots",
                  backgroundColor: Colors.deepPurple),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: "Search",
                  backgroundColor: Colors.deepPurple)
            ],
            type: BottomNavigationBarType.fixed,
            elevation: 5,
            onTap: (int index) {
              if (index == 0) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeApplication()));
              }
              if (index == 1) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const PlotData()));
              }
              if (index == 2) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SearchFile()));
              }
            },
            iconSize: 40,
            selectedItemColor: Colors.black));
  }
}

class AnotherPage extends StatefulWidget {
  const AnotherPage({super.key});

  @override
  _AnotherPageState createState() => _AnotherPageState();
}

class _AnotherPageState extends State<AnotherPage> {
  var array = ["1", "2", "3", "4", "5", "6", "7"];
  buttonUI() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
      child: Column(
          children: List.generate(array.length, (int i) {
        return ButtonHover(i + 1, array[i]);
      })),
    );
  }

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
          child: SingleChildScrollView(
            child: Center(
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
                child: buttonUI(),
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Home",
                  backgroundColor: Colors.deepPurple),
              BottomNavigationBarItem(
                  icon: Icon(Icons.vrpano_outlined),
                  label: "Plots",
                  backgroundColor: Colors.deepPurple),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: "Search",
                  backgroundColor: Colors.deepPurple)
            ],
            type: BottomNavigationBarType.fixed,
            elevation: 5,
            onTap: (int index) {
              if (index == 0) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeApplication()));
              }
              if (index == 1) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const PlotData()));
              }
              if (index == 2) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SearchFile()));
              }
            },
            iconSize: 40,
            selectedItemColor: Colors.black));
  }
}

class SearchFile extends StatefulWidget {
  const SearchFile({super.key});

  @override
  _SearchFileState createState() => _SearchFileState();
}

class _SearchFileState extends State<SearchFile> {
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
                      'Single DataColumns',
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
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AnotherButton()));
                    },
                    child: const Icon(Icons.snippet_folder)),
                const SizedBox(
                  height: 100,
                ),
                Container(
                  width: 240.0,
                  height: 42.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24.0),
                      color: Colors.deepPurple),
                  child: const Center(
                    child: Text(
                      'Double DataColumns',
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
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DoubleColumn()));
                    },
                    child: const Icon(Icons.snippet_folder))
              ],
            ),
          ),
        ),
      );
  }
}
//Buttons

//SendingSMS
_sendingSMS() async {
  var url = Uri.parse("sms:9392354290");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

//Sending MAIL
_sendingMails() async {
  var url = Uri.parse("mailto:harsha10012004@gmail.com");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}
