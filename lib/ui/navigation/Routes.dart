import 'package:familyanchors/ui/elements/ParentsWidget.dart';
import 'package:familyanchors/ui/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:numberpicker/numberpicker.dart';

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              child: const Text('Open route'),
              // Within the `FirstRoute` widget
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  MyHomePage(title: "hello"))
                );
              },
            ),
          ),

          const Spacer(flex: 1),

          // const ParentsWidget(fle),

          const Spacer(flex: 1),


          Flexible(
            flex: 1,
            child: Center(
            child: ElevatedButton(
              child: const Text('Open route'),
              // Within the `FirstRoute` widget
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage(title: "hello"))
                );
              },
            ),
          ),)
        ],


      )
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          // Within the SecondRoute widget
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}