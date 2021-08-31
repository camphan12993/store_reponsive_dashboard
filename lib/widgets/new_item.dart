import 'package:flutter/material.dart';
import 'package:test_web/constaints.dart';

class New {
  final String title;
  final String imgUrl;
  final String time;
  final String description;

  New(
      {required this.time,
      required this.title,
      required this.imgUrl,
      this.description = ''});
}

class NewItem extends StatelessWidget {
  final New data;
  const NewItem({required this.data, Key? key}) : super(key: key);

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
                color: Colors.red,
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
