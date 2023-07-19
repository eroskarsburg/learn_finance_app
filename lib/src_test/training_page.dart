import 'package:flutter/material.dart';

class TrainingPage extends StatefulWidget {
  
  @override
  _TrainingPageState createState() {
    print("_TrainingPageState createState()");
    return _TrainingPageState();
  }
}

class _TrainingPageState extends State<TrainingPage> {
  late String nomePage;

  _TrainingPageState(){
    print("_TrainingPageState constructor");
  }

  @override
  void initState() {
    super.initState();
    print("_TrainingPageState initState");
    nomePage = "";
    // If we would do an async initState
    Future.delayed(Duration(seconds: 2), (){
      setState(() {
        nomePage = "Home";
      });
    });
  }

  @override
  void didChangeDependencies() {
    print("_TrainingPageState didChangeDependencies()");
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    print("_TrainingPageState build");
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(nomePage),
        ),
        body: Column(
          children: [
            Text("Teste"),
            FilledButton(
              onPressed: () {
                setState(() {
                  nomePage = nomePage == "HomeTest2" ? "Home" : "HomeTest2";
                });
              },
              child: Text("Alterando nome"),
            ),
          ],
        ),
      ),
    );
  }
}