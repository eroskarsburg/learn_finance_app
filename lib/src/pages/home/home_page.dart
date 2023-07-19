import 'package:flutter/material.dart';
import 'package:learnfinanc_app/src/shared/page_drawer.dart';


class HomePage extends StatelessWidget {
  final String? username;

  HomePage({required this.username});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: BodyHome(),
    );
  }
}

class BodyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF00BA79),
        title: const Text('Home'),
      ),
      body: CardList(),
      drawer: HamburguerDrawer("home"),
      // bottomNavigationBar: DefaultFooterNavigation(),
    );
  }
}

class CardList extends StatelessWidget{
  
  @override
  Widget build(BuildContext context){
    // Implement a table called "Cards" in database structure.
    return ListView(
        children: [
          CardClass(
            "Text 1",
            "Subtitle 1",
            "assets/images/home_page_cards/commercial_contabil.png",
          ),
          CardClass(
            "Text 2",
            "Subtitle 2",
            "assets/images/home_page_cards/counts_cash.png",
          ),
          CardClass(
            "Text 3",
            "Subtitle 3",
            "assets/images/home_page_cards/graphics_bills.png",
          ),
        ],
      );
  }
}

class CardClass extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;

  CardClass(this.title, this.subtitle, this.imagePath);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 60,
        bottom: 30,
      ),
      child: Center(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset(
                imagePath,
                fit: BoxFit.cover,
                width: 265,
              ),
              ListTile(
                contentPadding: const EdgeInsets.only(
                  top: 5,
                  bottom: 5,
                  left: 20,
                  right: 20,
                ),
                title: Text(
                  title,
                  textDirection: TextDirection.ltr,
                ),
                subtitle: Text(
                  subtitle,
                  textDirection: TextDirection.ltr,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text(
                      'More info',
                      textDirection: TextDirection.ltr,
                    ),
                    onPressed: () {/* ... */},
                  ),
                  const SizedBox(width: 8),
                  TextButton(
                    child: const Text(
                      'Watch Class',
                    ),
                    onPressed: () {/* ... */},
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}