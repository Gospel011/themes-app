import 'package:flutter/material.dart';
import 'package:my_themes_app/Presentation/pages/settings_page.dart';
import 'package:my_themes_app/Presentation/widgets/post_widget.dart';
import 'package:my_themes_app/models/post_model.dart';
import 'package:my_themes_app/util/dummy_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  List<Post> get posts => dummyPosts.map((post) => Post.fromMap(post)).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HOME"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SettingsPage()));
              },
              icon: const Icon(Icons.settings)),

              const SizedBox(width: 8,),
        ],
      ),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
            child: PostWidget(
              post: posts[index],
            ),
          );
        },
      ),
    );
  }
}
