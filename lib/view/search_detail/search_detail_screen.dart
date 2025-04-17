import 'package:flutter/material.dart';
import 'package:flutter_imgea_search_pixabay/domin/model/image_model.dart';

class SearchDetailScreen extends StatelessWidget {
  final ImageModel model;
  const SearchDetailScreen({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_new_outlined)),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                model.imageURL,
                width: MediaQuery.of(context).size.width / 1.5,
              ),
              Text("views : ${model.viewCount}"),
              Text("downloads : ${model.downloadsCount}"),
              Text("likes : ${model.likeCount}"),
              Text("comments : ${model.commentsCount}"),
              Text("author : ${model.authorName}")
            ],
          ),
        ),
      ),
    );
  }
}
