import 'package:flutter/material.dart';

class AlbumPage extends StatelessWidget {
  const AlbumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'album page',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}