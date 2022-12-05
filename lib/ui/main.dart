import 'package:familyanchors/model/Kin.dart';
import 'package:familyanchors/ui/elements/InpitField.dart';
import 'package:familyanchors/ui/elements/ReordableListWithImage.dart';
import 'package:familyanchors/ui/navigation/Routes.dart';
import 'package:flutter/material.dart';

import '../domain/DataProvider.dart';
import 'elements/CheckBoxWithText.dart';
import 'elements/InputFields.dart';
import 'elements/TestBox.dart';
import 'input/ParentsProfile.dart';
import 'input/ParentsProfileVM.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      initialRoute: '/',
      routes: <String, WidgetBuilder> {
        '/n': (BuildContext context) => ReorderableListWithImage(),
        '/': (BuildContext context) => ParentsProfileScreen(),
        '/a': (BuildContext context) =>  TestBox(),//MyHomePage(title: "Hello"),
      },
    );

    // return MaterialApp(
    //   title: 'Flutter Demo',
    //   theme: ThemeData(
    //     // This is the theme of your application.
    //     //
    //     // Try running your application with "flutter run". You'll see the
    //     // application has a blue toolbar. Then, without quitting the app, try
    //     // changing the primarySwatch below to Colors.green and then invoke
    //     // "hot reload" (press "r" in the console where you ran "flutter run",
    //     // or simply save your changes to "hot reload" in a Flutter IDE).
    //     // Notice that the counter didn't reset back to zero; the application
    //     // is not restarted.
    //     primarySwatch: Colors.blue,
    //   ),
    //   home: const MyHomePage(title: 'Flutter Demo Home Page'),
    // );
  }
}

class MyHomePage extends StatefulWidget {
   MyHomePage({super.key, required this.title}){
    _profileVM = ParentsProfileVM(_dataProvider);
  }

  var _dataProvider = DataProvider();
  var _profileVM = null;

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;


  CloseKin kin = CloseKin(1994, FamilyStatus.FATHER);
  // CloseKin kin1 = CloseKin.ClearingConstruct();


  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
      kin.showKin();

    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            CheckBoxWithText(label: 'Load rocket with supplies', checked: true),
            CheckBoxWithText(label: 'Launch rocket', checked: true),
            CheckBoxWithText(label: 'Circle the home planet', checked: false),
            CheckBoxWithText(label: 'Head out to the first moon', checked: true),
            CheckBoxWithText(label: 'Launch moon lander #1', checked: false),
            //InputField(),

            InputFields(status: "Mam",)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
