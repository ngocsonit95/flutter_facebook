import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lession_layout/models/models.dart';
import 'package:flutter_lession_layout/views/widgets/widgets.dart';

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
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
             ProfileAvatar(imageUrl: currentUser.imageUrl),
              const SizedBox( 
                width: 8.0,
              ),
              Expanded(
                child: TextField(
                  decoration:
                      InputDecoration.collapsed(hintText: "Bạn đang nghĩ gì ?"),
                ),
              )
            ],
          ),
          const Divider(
            height: 10.0,
            thickness: 0.5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                  const VerticalDivider(width: 8.0,),
                  FlatButton.icon(
                  onPressed: () => print("Live"),
                  icon: const Icon(
                    Icons.videocam,
                    color: Colors.red,
                  ),
                  label: Text("Live")),
                  const VerticalDivider(width: 8.0,),
                  FlatButton.icon(
                  onPressed: () => print("Photo"),
                  icon: const Icon(
                    Icons.photo_library,
                    color: Colors.green,
                  ),
                  label: Text("Photo")),
                  const VerticalDivider(width: 8.0,),
                  FlatButton.icon(
                  onPressed: () => print("Room"),
                  icon: const Icon(
                    Icons.video_call,
                    color: Colors.purple,
                  ),
                  label: Text("Room")),
            ],
          )
        ],
      ),
    );
  }
}
