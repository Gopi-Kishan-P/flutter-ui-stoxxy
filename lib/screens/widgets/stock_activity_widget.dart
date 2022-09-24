import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StockActivityWidget extends StatelessWidget {
  StockActivityWidget({super.key});
  final List<Map<String, String>> stockList = [
    {
      'id': 'NVDA',
      'name': 'Nvidia',
      'growth': '+0,14%',
      'number': '25.94',
      'price': '\$227.26',
      'count': '10',
      'image': 'assets/icons/nvidia.svg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 24),
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromARGB(82, 174, 174, 174),
        ),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (var stock in stockList)
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey.shade200,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: SvgPicture.asset(
                      stock['image']!,
                      color: Theme.of(context).colorScheme.secondary,
                      
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      stock['id']!,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      stock['name']!,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      stock['number']!,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor),
                    ),
                    const SizedBox(height: 6),
                    if (stock['growth']![0] == '+')
                    Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.upLong,
                          color: Theme.of(context).primaryColor,
                          size: 10,
                        ),
                        const SizedBox(width: 2),
                        Text(
                          stock['growth']!.substring(1),
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context).primaryColor),
                        )
                      ],
                    ),
                    if (stock['growth']![0] == '-')
                    Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.downLong,
                          color: Theme.of(context).errorColor,
                          size: 10,
                        ),
                        const SizedBox(width: 2),
                        Text(
                          stock['growth']!.substring(1),
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context).errorColor),
                        )
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      stock['price']!,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      '${stock['count']!} shares',
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
        ],
      ),
    );
  }
}
