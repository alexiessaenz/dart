import 'package:flutter/material.dart';
import 'package:moviedex/domain/entities/video_post.dart';
import 'package:moviedex/infrastructure/models/local_video_model.dart';
import 'package:moviedex/presentation/providers/chat_provider.dart';
import 'package:moviedex/shared/data/local_video_posts.dart';

class DiscoverProvider extends ChangeNotifier{
  List<VideoPost> videoList = [];
  bool initLoading =true;

  DiscoverProvider() : super();

  Future<void> loadNextPage() async{
    //Data repository
    await Future.delayed(const Duration(seconds: 2));
    final List<VideoPost> newVideos = videoPosts.map(
            (video) => LocalVideoModel.fromJsonMap(video).toVideoPostEntity()).toList();
  }

}