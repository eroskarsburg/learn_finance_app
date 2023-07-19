// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:learnfinanc_app/src_test/pages/classroom_content/class_content.dart';
import 'package:learnfinanc_app/src_test/shared/drawer_test_page.dart';

class HomeButtonsPage extends StatefulWidget {
  const HomeButtonsPage({super.key});

  @override
  State<HomeButtonsPage> createState() => _HomeButtonsPageState();
}

class _HomeButtonsPageState extends State<HomeButtonsPage>{
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navegacao'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: () {},
              child: Text('sdadas'),
            ),
            FilledButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ClassContent(),
                ));
              },
              child: Text('dasdasd'),
            ),
          ],
        ),
      ),
    );
  }
}