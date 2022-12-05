import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestBox extends StatefulWidget {
  TestBox({super.key}){}

  @override
  State<TestBox> createState() => _TestBoxState();
}

class _TestBoxState extends State<TestBox> {
  int flex = 1;

  void _incrementCounter() {
    setState(() {
      flex++;
      print("flex: $flex");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Flexible(
                flex: flex,
                child: GestureDetector(
              onTap: (){
                setState(() {
                  flex++;
                });
              },
            )),

            const Flexible(
                flex: 1,
                child: SizedBox(
                  child: Card(child: Text("Hello World!")),
            ))
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