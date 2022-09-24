import 'package:flutter/material.dart';
import 'package:ui_assignment/widgets/icons_widget.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 24),
        logoIcon,
        const SizedBox(width: 16),
        Text(
          'Alex Julia',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w900,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        const Spacer(),
        searchIcon,
        const SizedBox(width: 28),
        bellIcon,
        const SizedBox(width: 24),
      ],
    );
  }
}
