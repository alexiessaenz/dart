import 'package:flutter/material.dart';
import 'package:moviedex/domain/entities/video_post.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;
  const VideoScrollableView({
    super.key,
    required this.videos,
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
