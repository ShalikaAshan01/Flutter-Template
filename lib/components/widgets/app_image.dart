import 'dart:convert';
import 'dart:typed_data';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

// This class will used to display the network based image
class AppNetworkImage extends StatelessWidget {
  const AppNetworkImage({
    Key? key,
    required this.url,
    this.fit,
  }) : super(key: key);
  final String url;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    if (url.isEmpty) {
      return const SizedBox.shrink();
    }
    return CachedNetworkImage(
      fit: fit,
      imageUrl: url,
    );
  }
}

class Base64Image extends StatelessWidget {
  const Base64Image({Key? key, required this.base64Image}) : super(key: key);
  final String base64Image;

  @override
  Widget build(BuildContext context) {
    final Uint8List _bytes = const Base64Decoder()
        .convert(base64Image.replaceAll('data:image/jpeg;base64,', ''));
    return Image.memory(_bytes,fit: BoxFit.cover,);
  }
}
