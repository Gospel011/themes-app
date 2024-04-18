import 'package:flutter/material.dart';
import 'package:my_themes_app/models/post_model.dart';


class PostHeader extends StatelessWidget {
  const PostHeader({
    super.key,
    required this.post,
  });

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // row with avatar and a col with name and handle
        Row(
          children: [
        // avatar
            const CircleAvatar(backgroundColor: Colors.blueGrey, radius: 24,),
    
            const SizedBox(width: 8,),
                    
            // name and handle
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // name
                Text(post.name),
            
                //handle
                Text(post.handle),
              ],
            ),
          ],
        ),
    
        // more icon
        IconButton(onPressed: (){
          print("More pressed");
        }, icon: const Icon(Icons.more_vert_rounded))
      ],
    );
  }
}
