import 'package:flutter/material.dart';
import 'package:flutter_lession_layout/config/palette.dart';
import 'package:flutter_lession_layout/data/data.dart';
import 'package:flutter_lession_layout/views/widgets/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          brightness: Brightness.light,
          backgroundColor: Colors.white,
          title: Text(
            "facebook",
            style: const TextStyle(
            color: Palette.facbookBlue,
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
            letterSpacing: -1.2
            ),
          ),
          centerTitle: false,
          floating: false,
          actions: [
            CircleButton(icon: Icons.search, iconSize: 30.0, onPressed: ()=> print("Messenger")),
            CircleButton(icon: MdiIcons.facebookMessenger, iconSize: 30.0, onPressed: ()=> print("Messenger"))
          ],
        ),
        SliverToBoxAdapter(
          child: CreatePostContainer(currentUser: currentUser),
        ),
      
      ],
    ));
  }
}
