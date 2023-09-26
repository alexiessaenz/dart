import 'package:flutter/material.dart';
import 'package:moviedex/domain/entities/video_post.dart';
import 'package:moviedex/presentation/widgets/shared/video_buttons.dart';
import 'package:moviedex/presentation/widgets/video/full_screen_player.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;
  
  const VideoScrollableView({super.key, required this.videos});
  
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
    scrollDirection: Axis.vertical,
    physics: const BouncingScrollPhysics(),
    itemCount: videos.length,
    
    itemBuilder: (context, index){
      final VideoPost videoPosts = videos[index];

      return Stack(
        children: [ //videoplayer
          SizedBox.expand(
            child: FullScreenPlayer(
              caption: videoPosts.caption,
              videoUrl: videoPosts.videoUrl,
              ) //Container(color: Colors.amber),
          ),

          Positioned( //buttons
            bottom:40,
            right: 20,
            child: VideoButtons(video: videoPosts),
          )
        ],
      );
    }
    );
  }

  
}

