import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WatchlistWidget extends StatelessWidget {
  WatchlistWidget({super.key});

  final List<Map<String, String>> watchList = [
    {
      'id': 'ADB',
      'name': 'Adobe Inc',
      'growth': '+5,46%',
      'number': '33.49',
      'price': '\$643.58',
      'image': 'assets/icons/adobe.svg'
    },
    {
      'id': 'TSLA',
      'name': 'Tesla',
      'growth': '-9,46%',
      'number': '25.68',
      'price': '\$909.68',
      'image': 'assets/icons/tesla.svg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(width: 24),
            for (var stock in watchList) ...[
              Container(
                width: 250,
                padding: const EdgeInsets.all(22),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(82, 174, 174, 174),
                    ),
                    borderRadius: BorderRadius.circular(22)),
                child: Column(children: [
                  Row(
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
                      const SizedBox(width: 8),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              stock['id']!,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color:
                                      Theme.of(context).colorScheme.secondary),
                            ),
                            const SizedBox(height: 4),
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
                      ),
                      const SizedBox(width: 8),
                      if (stock['growth']![0] == '+') ...[
                        FaIcon(
                          FontAwesomeIcons.upLong,
                          color: Theme.of(context).primaryColor,
                          size: 12,
                        ),
                        const SizedBox(width: 2),
                        Text(
                          stock['growth']!.substring(1),
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context).primaryColor),
                        )
                      ],
                      if (stock['growth']![0] == '-') ...[
                        FaIcon(
                          FontAwesomeIcons.downLong,
                          color: Theme.of(context).errorColor,
                          size: 12,
                        ),
                        const SizedBox(width: 2),
                        Text(
                          stock['growth']!.substring(1),
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context).errorColor),
                        )
                      ],
                    ],
                  ),
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              stock['number']!,
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w600,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              stock['price']!,
                              style: const TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 24),
                        Expanded(
                          child: LineChart(
                            LineChartData(
                                borderData: FlBorderData(show: false),
                                titlesData: FlTitlesData(show: false),
                                gridData: FlGridData(show: false),
                                minX: 0,
                                minY: 0,
                                maxX: 12,
                                maxY: 10,
                                // data
                                lineBarsData: [
                                  LineChartBarData(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    dotData: FlDotData(show: false),
                                    barWidth: 3,
                                    isCurved: true,
                                    curveSmoothness: 0.5,
                                    spots: [
                                      const FlSpot(0, 0),
                                      const FlSpot(0.6, 0.4),
                                      const FlSpot(2, 3.5),
                                      const FlSpot(3.4, 2.5),
                                      const FlSpot(4, 2.4),
                                      const FlSpot(4.5, 1.5),
                                      const FlSpot(5.5, 2.8),
                                      const FlSpot(6.4, 3.8),
                                      const FlSpot(7, 5.8),
                                      const FlSpot(8.5, 5),
                                      const FlSpot(9.2, 4.6),
                                      const FlSpot(9.8, 3),
                                      const FlSpot(10.8, 3.6),
                                      const FlSpot(11.8, 6),
                                    ],
                                  )
                                ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
              const SizedBox(width: 16),
            ]
          ],
        ),
      ),
    );
  }
}
