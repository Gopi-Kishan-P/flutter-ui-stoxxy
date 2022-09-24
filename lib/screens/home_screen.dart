import 'package:flutter/material.dart';
import 'package:ui_assignment/screens/widgets/appbar.dart';
import 'package:ui_assignment/screens/widgets/heading_widget.dart';
import 'package:ui_assignment/screens/widgets/portfolio_value_widget.dart';
import 'package:ui_assignment/screens/widgets/stock_activity_widget.dart';
import 'package:ui_assignment/screens/widgets/watchlist_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              const MyAppBar(),
              const SizedBox(height: 36),
              const PortfolioValueWidget(),
              const SizedBox(height: 36),
              const HeadingWidget(
                  headingVal: 'Watchlist', buttonVal: 'See All'),
              const SizedBox(height: 4),
              WatchlistWidget(),
              const SizedBox(height: 18),
              const HeadingWidget(headingVal: 'Stock Activity', buttonVal: ''),
              const SizedBox(height: 4),
              StockActivityWidget(),
              const SizedBox(height: 18),
            ],
          ),
        ),
      ),
    );
  }
}
