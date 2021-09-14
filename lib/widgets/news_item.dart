import 'package:flutter/material.dart';
import 'package:store_responsive_dashboard/constaints.dart';
import 'package:store_responsive_dashboard/model.dart';

class NewsItem extends StatelessWidget {
  final News data;
  const NewsItem(this.data);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(bottom: 24),
      decoration: BoxDecoration(
        color: primaryLight,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: primary,
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(data.imgUrl))),
          ),
          SizedBox(
            width: 14,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.title,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  data.description,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  data.time,
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,
                      fontSize: 12),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
