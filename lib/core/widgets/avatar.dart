import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final double height, width;
  final String? url;
  final Color backColor;
  final bool? assetUrl;

  const Avatar(
      {super.key,
      this.height = 72,
      this.width = 72,
      required this.backColor,
      this.url,
      this.assetUrl});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backColor,
      ),
      child: url == null
          ? const ClipOval(
              child: Icon(
              Icons.person,
              color: Colors.white,
              size: 40,
            ))
          : ClipOval(
              child: assetUrl != null
                  ? Image.asset(url!, fit: BoxFit.cover)
                  : Image.network(url!, fit: BoxFit.cover)),
    );
  }
}
