// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

// ignore: camel_case_types
class allProjects extends StatefulWidget {
  const allProjects({Key? key}) : super(key: key);

  @override
  State<allProjects> createState() => _allProjectsState();
}

class _allProjectsState extends State<allProjects> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Container(
        decoration:const BoxDecoration(
          gradient: LinearGradient(colors: [Color(0xff213A50), Color(0xff071930)],)
        ),
        child: ListView(),
      ),
    );
  }
}
