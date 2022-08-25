
import 'package:flutter/material.dart';
class person extends StatelessWidget {
  const person({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'User Personal',
        style: TextStyle(fontSize: 50),
      ),
    );
  }
}
