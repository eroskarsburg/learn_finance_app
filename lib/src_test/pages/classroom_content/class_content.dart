import 'package:flutter/material.dart';
import 'package:learnfinanc_app/src_test/shared/drawer_test_page.dart';

class ClassContent extends StatefulWidget {
  const ClassContent({super.key});

  @override
  State<ClassContent> createState() => _ClassContentState();
}

class _ClassContentState extends State<ClassContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Container(
        child: const Column(
          children: [
            SizedBox(
              height: 40,
              child: Center(
                child: Text("Teste"),
              ),
            ),
            SizedBox(
              height: 40,
              child: Center(
                child: Text("Teste"),
              ),
            ),
            SizedBox(
              height: 40,
              child: Center(
                child: Text("Teste"),
              ),
            ),
            SizedBox(
              height: 40,
              child: Center(
                child: Text("Teste"),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavigationDrawerTest(),
    );
  }
}
