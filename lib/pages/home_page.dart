import 'package:flutter/material.dart';
import 'package:whales_of_iceland/core/theme/strings.dart';
import 'package:whales_of_iceland/models/whales_list.dart';
import 'package:whales_of_iceland/pages/about_whale_page.dart';
import 'package:whales_of_iceland/pages/safety_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.file_upload_outlined),color: Colors.grey
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        height: 600,
        width: double.infinity,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(AppStrings.guides,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                  fontSize: 32,
                ),
              ),
              SizedBox(
                height: 500,
                child: ListView(
                  children: [
                    for(int i=0;i<WhalesList.whaleList.length;i++)
                    Container(
                      height: 200,
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image(image: AssetImage(WhalesList.whaleList[i].imageUrl),fit: BoxFit.cover),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(width: 10),
                                  MaterialButton(
                                    onPressed: (){},
                                    color: Colors.blueAccent.shade700,
                                    child: Text(WhalesList.whaleList[i].min,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      TextButton(onPressed: (){
                                        Navigator.push(context,
                                            MaterialPageRoute(builder: (context) => AboutWhalePage()));
                                          },
                                          child: Text(WhalesList.whaleList[i].name,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                            ),
                                          ),
                                      ),
                                      Text(WhalesList.whaleList[i].type,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 10),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.question_mark),label: "Safety"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
          ],
      ),
    );
  }
}
