import 'package:flutter/material.dart';
import './components/button.dart';

void main() => runApp(HomeScreen());

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Learning Flutter')),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomElevatedButton(
              onPressed: () {
                print("Learning Flutter");
              },
              title:'Elevated button',
              btnWidth:240,
              btnHeight:60,
              backgroundColor:Colors.green,
              titleColor:Colors.white,
              elevation: 6,
              fontWeight: FontWeight.bold,
              borderRadius:20,
            )
          ],
        ),
        ),
      ),
    );
  }
}
