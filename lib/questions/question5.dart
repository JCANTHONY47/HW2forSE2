import 'package:flutter/material.dart';

class Question5 extends StatefulWidget {
  @override
  _Question5State createState() => _Question5State();
}

class _Question5State extends State<Question5> {
  int _currentIndex = 0;

  // List of image URLs
  final List<String> _imageUrls = [
    "https://i.insider.com/5e32f2a324306a19834af322?width=1800&format=jpeg&auto=webp",
    "https://th.bing.com/th/id/R.875ac5e945926729d6c4af3fc557423a?rik=l9wf4rADmQ0Wjg&pid=ImgRaw&r=0",
    "https://cdnb.artstation.com/p/assets/images/images/033/599/387/large/ismael-pommaz-mando-and-grogu.jpg?1610050130",
  ];

  void _changeImage() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % _imageUrls.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('Question 5'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(_imageUrls[_currentIndex]),
            SizedBox(height: 20),
            IconButton(
              iconSize: 50,
              icon: Icon(Icons.shuffle),
              onPressed: _changeImage,
            ),
          ],
        ),
      ),
    );
  }
}
