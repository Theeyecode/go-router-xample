import 'package:flutter/material.dart';
import 'package:test_app/data/dummy_data.dart';
import 'package:go_router/go_router.dart';

class FamilyScreen extends StatelessWidget {
  const FamilyScreen({Key? key, required this.family}) : super(key: key);
  final Family family;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(family.name)),
      body: ListView(
        children: [
          for (final p in family.people)
            ListTile(
              title: Text(p.name),
              onTap: () => context.go('/family/${family.id}/person/${p.id}'),
            ),
        ],
      ),
    );
  }
}
