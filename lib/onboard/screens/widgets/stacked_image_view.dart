import 'package:flutter/material.dart';

import '../../../constants/image_paths.dart';

class StackedImageVIew extends StatelessWidget {
  const StackedImageVIew({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            child: Image.asset(
              OTImagePaths.songCover3,
              width: 250,
              height: 250,
            ),
          ),
          Positioned(
            top: 20,
            child: Image.asset(
              OTImagePaths.songCover2,
              width: 250,
              height: 250,
            ),
          ),
          Positioned(
            top: 50,
            child: Image.asset(
              OTImagePaths.songCover1,
              width: 250,
              height: 250,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}