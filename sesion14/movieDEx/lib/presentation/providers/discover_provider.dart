import 'package:flutter/material.dart';
import 'package:moviedex/domain/entities/video_post.dart';
import 'package:moviedex/infrastructure/models/local_video_model.dart';
import 'package:moviedex/shared/data/local_video_posts.dart';

class DiscoverProvider extends ChangeNotifier{
  bool initialLoading =true;
  List<VideoPost> videos = [];

 // DiscoverProvider() : super();

  Future<void> loadNextPage() async{
    //Data repository
    await Future.delayed(const Duration(seconds: 2));
    final List<VideoPost> newVideos = videoPosts.map(
            (video) => LocalVideoModel.fromJson(video).toVideoPostEntity()).toList();
            videos.addAll(newVideos);
            initialLoading=false;
            notifyListeners();
  }

}

