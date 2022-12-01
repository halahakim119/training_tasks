import 'package:flutter/material.dart';
import 'package:training_tasks/features/instagram/data/models/datasource/dummy_data.dart';
import 'package:training_tasks/features/instagram/data/models/single_user_post_info.dart';
import 'package:training_tasks/features/instagram/presentation/widgets/post.dart';


class InstagramHomeScreen extends StatelessWidget {
  DummyData user = DummyData();
  late List users = user.users_data();
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListView.builder(
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            itemCount: users.length,
            itemBuilder: (context,index){
            return ListView.builder(
            physics:const ScrollPhysics(),

              shrinkWrap: true,
              itemCount:  users[index].postInfo.length,
              itemBuilder: (context,i){
              return Post(
                username: users[index].username,
                profilePicture: users[index].profilePicture,
                postsNum: users[index].postsNum,
             postInfo: [
                  SingleUserPostInfo(
                      description: users[index].postInfo![0].description,
                      image: users[index].postInfo![0].image)
                ],
                
                );
            }) ;
          })
        ],
      ),
    );
  }
}
