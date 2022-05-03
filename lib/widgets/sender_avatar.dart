import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:responsiveness/models/models.dart';

class SenderAvatar extends StatelessWidget {
  const SenderAvatar({
    Key? key,
    required this.sender,
    this.radius = 40,
  }) : super(key: key);

  final Sender sender;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: CachedNetworkImageProvider(sender.avatarUrl),
    );
  }
}
