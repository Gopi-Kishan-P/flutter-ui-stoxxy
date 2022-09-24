import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget circularIcon(context, String image) {
  return CircleAvatar(
    backgroundColor: Colors.grey.shade200,
    child: Padding(
      padding: const EdgeInsets.all(12),
      child: SvgPicture.asset(
        image,
        color: Theme.of(context).colorScheme.secondary,
      ),
    ),
  );
}
