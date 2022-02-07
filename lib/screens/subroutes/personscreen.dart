import 'package:flutter/material.dart';
import 'package:test_app/data/dummy_data.dart';

class PersonScreen extends StatelessWidget {
  const PersonScreen({Key? key, required this.family, required this.person})
      : super(key: key);
  final Family family;
  final Person person;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(family.name)),
        body: Text('${person.name} ${family.name} is ${person.age} years old'));
  }
}
