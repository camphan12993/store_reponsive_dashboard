import 'package:flutter/material.dart';
import 'package:store_responsive_dashboard/constaints.dart';
import 'package:store_responsive_dashboard/model.dart';
import 'package:store_responsive_dashboard/widgets/news_item.dart';

final news = <News>[
  News(
    '5 minutes ago',
    'Lorem ipsum dolor sit amet, consectetur',
    'assets/imgs/shop.jpeg',
    'Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur',
  ),
  News(
    '5 minutes ago',
    'Lorem ipsum dolor sit amet, consectetur',
    'assets/imgs/shop.jpeg',
    'Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur',
  ),
  News(
    '5 minutes ago',
    'Lorem ipsum dolor sit amet, consectetur',
    'assets/imgs/shop.jpeg',
    'Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur',
  ),
  News(
    '5 minutes ago',
    'Lorem ipsum dolor sit amet, consectetur',
    'assets/imgs/shop.jpeg',
    'Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur',
  ),
  News(
    '5 minutes ago',
    'Lorem ipsum dolor sit amet, consectetur',
    'assets/imgs/shop.jpeg',
    'Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur',
  ),
  News(
    '5 minutes ago',
    'Lorem ipsum dolor sit amet, consectetur',
    'assets/imgs/shop.jpeg',
    'Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur',
  ),
  News(
    '5 minutes ago',
    'Lorem ipsum dolor sit amet, consectetur',
    'assets/imgs/shop.jpeg',
    'Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur',
  ),
  News(
    '5 minutes ago',
    'Lorem ipsum dolor sit amet, consectetur',
    'assets/imgs/shop.jpeg',
    'Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur',
  ),
  News(
    '5 minutes ago',
    'Lorem ipsum dolor sit amet, consectetur',
    'assets/imgs/shop.jpeg',
    'Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur',
  ),
];

class NewsList extends StatelessWidget {
  final bool showDesktop;
  const NewsList([this.showDesktop = false]);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryLight.withAlpha(100),
      padding: EdgeInsets.symmetric(horizontal: componentPadding),
      child: Column(
        children: [
          Container(
            height: topBarHeight,
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
                    'Latest News',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ))
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: news.map((e) => NewsItem(e)).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
