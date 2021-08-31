import 'package:flutter/material.dart';
import 'package:test_web/widgets/new_item.dart';

final news = <New>[
  New(
      time: '5 minutes ago',
      title: 'Lorem ipsum dolor sit amet, consectetur',
      description:
          'Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur',
      imgUrl: 'assets/imgs/shop.jpeg'),
  New(
      time: '5 minutes ago',
      title: 'Lorem ipsum dolor sit amet, consectetur',
      description:
          'Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur',
      imgUrl: 'assets/imgs/shop.jpeg'),
  New(
      time: '5 minutes ago',
      title: 'Lorem ipsum dolor sit amet, consectetur',
      description:
          'Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur',
      imgUrl: 'assets/imgs/shop.jpeg'),
  New(
      time: '5 minutes ago',
      title: 'Lorem ipsum dolor sit amet, consectetur',
      description:
          'Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur',
      imgUrl: 'assets/imgs/shop.jpeg'),
  New(
      time: '5 minutes ago',
      title: 'Lorem ipsum dolor sit amet, consectetur',
      description:
          'Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur',
      imgUrl: 'assets/imgs/shop.jpeg'),
];

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffE1F5ED),
        shadowColor: Colors.transparent,
        title: Text(
          'Latest News',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        color: Color(0xffE1F5ED),
        padding: EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: news.map((e) => NewItem(data: e)).toList(),
          ),
        ),
      ),
    );
  }
}
