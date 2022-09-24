import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget homeIcon = Padding(
  padding: const EdgeInsets.symmetric(horizontal: 18.0),
  child: Image.asset('assets/images/home.png', width: 24),
);
Widget chartIcon = Padding(
  padding: const EdgeInsets.symmetric(horizontal: 28.0),
  child: Image.asset('assets/images/pie_chart.png', width: 24),
);
Widget candleIcon = Padding(
  padding: const EdgeInsets.symmetric(horizontal: 28.0),
  child: Image.asset('assets/images/candle_chart.png', width: 24),
);
Widget userIcon = Padding(
  padding: const EdgeInsets.symmetric(horizontal: 18.0),
  child: Image.asset('assets/images/user.png', width: 24),
);

Widget arrowIcon = Padding(
  padding: const EdgeInsets.all(18.0),
  child: SvgPicture.asset(
    'assets/icons/arrow.svg',
    color: Colors.white,
  ),
);

Widget logoIcon = Image.asset('assets/images/logo.png', width: 24);
Widget searchIcon = Image.asset('assets/images/search.png', width: 22);
Widget bellIcon = Image.asset('assets/images/bell.png', width: 22);
