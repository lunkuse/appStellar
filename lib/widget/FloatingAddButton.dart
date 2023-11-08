import 'package:flutter/material.dart';

typedef void AddButtonFunction();

class FloatingAddButton extends StatelessWidget {

  AddButtonFunction action;

  FloatingAddButton ({required this.action});

  @override
  Widget build(BuildContext context) {
      return FloatingActionButton(
              onPressed: () { action();},
              child: Icon(Icons.add, color: Colors.white,),
              backgroundColor: Colors.black54,
      );
  }
}