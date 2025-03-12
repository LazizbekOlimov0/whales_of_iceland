import 'package:flutter/material.dart';

class SafetyPage extends StatefulWidget {
  const SafetyPage({super.key});

  @override
  State<SafetyPage> createState() => _SafetyPageState();
}

class _SafetyPageState extends State<SafetyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){
             Navigator.pop(context);
              },
            icon: Icon(Icons.arrow_back)),),
      body: Container(
        padding: EdgeInsets.all(20),
        height: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Safety instructions",
              style: TextStyle(
                color: Colors.black,
                fontSize: 32,
                fontWeight: FontWeight.w900,
              ),
            ),
            Text('''
            The magnificent whales roam the oceans of the world and Iceland is lucky enough to have them inhabit the oceans surrounding the island.
             Each species have their own unique features and characteristics that make them incredibly fascinating.
              Read all about these impressive creatures, learn fun facts and if you are looking for information on a specific type,
              go to our "Types of Whales" section where you can read about the most common whales seen in Iceland. 
            ''',
            ),
          ],
        ),
      ),
    );
  }
}
