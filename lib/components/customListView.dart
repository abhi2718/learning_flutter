import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  final List<String> todo = ['eat', 'sleep', 'wake up', 'dance','eat', 'sleep', 'wake up', 'dance'];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: 
        ListView.builder(itemBuilder: ((context, index) {
      return Text(todo[index]);
    }))
    );
  }
}
