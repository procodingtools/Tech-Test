import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tech_test/tools/res.dart';

class AccountImage extends StatelessWidget {
  const AccountImage(this.url, {Key? key}) : super(key: key);
  final String url;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      httpHeaders: {'Authorization': Res.token!},
      errorWidget: (_, __, ___) => Container(
          color: Colors.grey,
          child: const Center(child: Text('No Image'))),
      progressIndicatorBuilder: (_, __, ___) =>  const Center(
        child: CircularProgressIndicator(),
      ),
      width: 120,
      height: 120,
      fit: BoxFit.cover,
    );
  }
}
