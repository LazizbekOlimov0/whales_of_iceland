import 'package:flutter/material.dart';
import 'package:whales_of_iceland/models/whales_list.dart';

class AboutWhalePage extends StatefulWidget {
  const AboutWhalePage({super.key});

  @override
  State<AboutWhalePage> createState() => _AboutWhalePageState();
}

class _AboutWhalePageState extends State<AboutWhalePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            Navigator.pop(context);
            }, 
              icon: Icon(Icons.home)),
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
         // for(int i=0;i<WhalesList.whaleList.length;i++)
          SizedBox(
            height: 800,
            child: Image(image: AssetImage(WhalesList.whaleList[0].imageUrl)),
          ),
          Container(
            height: 600,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
            ),
            padding: EdgeInsets.all(20),
            child: Center(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue.shade200,
                    ),
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.arrow_right_alt),
                            Text(WhalesList.whaleList[0].mts)
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.shopping_bag),
                            Text(WhalesList.whaleList[0].tons),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.speed),
                            Text(WhalesList.whaleList[0].speed),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(WhalesList.whaleList[0].about),
                  SizedBox(height: 30),
                  Stack(
                    children: [
                      Divider(
                        height: 10,
                        thickness: 4,
                        color: Colors.grey,
                      ),
                      Divider(
                        height: 10,
                        thickness: 4,
                        color: Colors.blue,
                        endIndent: 230,
                      ),
                      Center(
                        child: Icon(Icons.circle,color: Colors.blue,size: 12),
                      )
                    ],
                  ),
                  IconButton(
                      onPressed: (){},
                    icon: Icon(Icons.play_arrow,size: 100,),
                    color: Colors.blueAccent.shade700,
                  )
                ],
              ),
            ),
          ),
          //for(int i=0;i<WhalesList.whaleList.length;i++)

        ],
      )
    );
  }
}
