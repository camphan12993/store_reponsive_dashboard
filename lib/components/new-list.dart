import 'package:flutter/material.dart';
import 'package:store_responsive_dashboard/widgets/new_item.dart';

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

class Newlist extends StatelessWidget {
  final bool showDesktop;
  const Newlist([this.showDesktop = false]);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      color: Color(0xffE1F5ED),
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Container(
            height: 80,
            child: Row(
              children: [
                this.showDesktop
                    ? SizedBox.shrink()
                    : IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                Expanded(
                    child: Center(
                  child: Text(
                    'Latest news',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ))
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: news.map((e) => NewItem(data: e)).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
