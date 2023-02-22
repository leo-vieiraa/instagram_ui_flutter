import 'package:flutter/material.dart';
import 'package:instagram_ui_flutter/util/bubble_stories.dart';

class UserHome extends StatelessWidget {
  const UserHome({super.key});

  final List _userList = const [
    'Leo',
    'Teste 1',
    'Teste 2',
    'Teste 3',
    'Teste 4',
    'Teste 5'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Instagram',
                style: TextStyle(color: Colors.black),
              ),
              Row(
                children: [
                  Icon(Icons.add),
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Icon(Icons.favorite),
                  ),
                  Icon(Icons.share),
                ],
              )
            ],
          ),
        ),
        body: Column(
          children: [
            //Stories
            Container(
              height: 130,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _userList.length,
                itemBuilder: (context, index) {
                  return BubbleStories(text: _userList[index]);
                },
              ),
            )
            // Body
          ],
        ));
  }
}
