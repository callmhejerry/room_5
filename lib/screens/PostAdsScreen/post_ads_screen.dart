import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import "package:flutter/material.dart";

class PostAdsScreen extends StatelessWidget {
  const PostAdsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).colorScheme.secondary,
        child: const Icon(
          FluentIcons.pen_20_regular,
        ),
      ),
      appBar: AppBar(
        title: const Text("Post Ads for room"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [],
        ),
      ),
    );
  }
}
