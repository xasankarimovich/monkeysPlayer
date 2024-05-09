import 'package:flutter/material.dart';
import 'package:musicplayer/popular_shou/popular_shou.dart';
import 'package:musicplayer/subscribe/subscribe.dart';
import 'package:musicplayer/tab_box.dart';

import 'home_screen/home_screen.dart';

void main(){
  runApp(const MusicPlayer());
}

class MusicPlayer extends StatelessWidget {
  const MusicPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TabScreen(),
    );
  }
}
