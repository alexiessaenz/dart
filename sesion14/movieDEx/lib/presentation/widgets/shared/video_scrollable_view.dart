import 'package:flutter/material.dart';
import 'package:moviedex/domain/entities/video_post.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videoList;
  const VideoScrollableView({
    super.key,
    required this.videoList,
  });

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Container(color: Colors.green,),
        Container(color: Colors.yellow,),
        Container(color: Colors.red,)
      ]
    );
  }
}
