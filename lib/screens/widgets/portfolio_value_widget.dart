import 'package:flutter/material.dart';

class PortfolioValueWidget extends StatelessWidget {
  const PortfolioValueWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      width: double.infinity,
      height: 200,
      color: Theme.of(context).colorScheme.secondary,
    );
  }
}