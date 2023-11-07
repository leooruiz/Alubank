import 'package:alubank_alura_project/components/sections/account_actions.dart';
import 'package:alubank_alura_project/components/sections/account_points.dart';
import 'package:alubank_alura_project/components/sections/header.dart';
import 'package:alubank_alura_project/components/sections/recent_activity.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: <Widget>[
          Header(),
          RecentActivity(),
          AccountActions(),
          AccountPoints(),
        ],
      ),
    );
  }
}
