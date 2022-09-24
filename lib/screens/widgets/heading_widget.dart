import 'package:flutter/material.dart';

class HeadingWidget extends StatelessWidget {
  const HeadingWidget({
    super.key,
    required this.headingVal,
    required this.buttonVal,
  });
  final String headingVal;
  final String buttonVal;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 24),
        Text(
          headingVal,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        const Spacer(),
        TextButton(
          style: TextButton.styleFrom(padding: const EdgeInsets.all(0)),
          onPressed: buttonVal.isEmpty ? null : () {},
          child: Text(
            buttonVal,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).primaryColor),
          ),
        ),
        const SizedBox(width: 24),
      ],
    );
  }
}
