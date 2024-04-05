import 'package:flutter/material.dart';
import 'package:my_themes_app/Presentation/widgets/post_header.dart';
import 'package:my_themes_app/models/post_model.dart';


class PostWidget extends StatelessWidget {
  const PostWidget({
    super.key,
    required this.post,
  });

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // header
        PostHeader(post: post),
    
        const SizedBox(height: 4,),
        
        // text
        Text(post.text)
      ],
    );
  }
}
