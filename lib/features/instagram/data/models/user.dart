

import 'package:training_tasks/features/instagram/data/models/single_user_post_info.dart';

class User {
  int? id;
  String? username;
  String? profilePicture;
  int? followersNum;
  int? followingNum;
  List<SingleUserPostInfo>? postInfo;
  late int postsNum = userPostsNum();
  User(
      {this.id,
      this.username,
      this.profilePicture,
      this.followersNum,
      this.followingNum,
      this.postInfo});

  int userPostsNum() {
    int num = postInfo!.length;
    return num;
  }
}

