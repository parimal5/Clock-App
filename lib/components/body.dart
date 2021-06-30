import 'dart:math';

import 'package:clock_app/constants.dart';
import 'package:clock_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'clock.dart';
import 'clock_painter.dart';
import 'country_card.dart';
import 'time_in_hours_and_min.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text(
              "Mumbai Maharashtra, India | IST",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            TimeInHoursAndMin(),
            Spacer(),
            Clock(),
            Spacer(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CountryCard(
                    coutry: 'New York',
                    timeZone: '+3 HRS | EST',
                    iconSrc: 'assets/icons/Liberty.svg',
                    time: '9:20',
                    period: 'PM',
                  ),
                  CountryCard(
                    coutry: 'New York',
                    timeZone: '+3 HRS | EST',
                    iconSrc: 'assets/icons/Liberty.svg',
                    time: '9:20',
                    period: 'PM',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
