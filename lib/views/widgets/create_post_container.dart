import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lession_layout/models/models.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;
  const CreatePostContainer({
    Key? key,
    required this.currentUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
      color: Colors.orange,
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20.0,
                backgroundColor: Colors.grey,
                backgroundImage:
                    CachedNetworkImageProvider("https://scontent-sin6-2.xx.fbcdn.net/v/t1.6435-1/c0.11.200.200a/p200x200/158415023_1664537567067372_898091311248931867_n.jpg?_nc_cat=108&ccb=1-3&_nc_sid=7206a8&_nc_ohc=0psq8OyDi-cAX8LfDrp&_nc_ht=scontent-sin6-2.xx&tp=27&oh=a03fe94a209db31c0aabdf17a69d9f50&oe=60BA54E9"),
              ),
              const SizedBox(width: 8.0 ,),
              Expanded(
                child: TextField(
                  decoration:
                      InputDecoration.collapsed(hintText: "Bạn đang nghĩ gì?"),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
