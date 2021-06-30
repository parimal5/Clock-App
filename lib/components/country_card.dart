import 'package:clock_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CountryCard extends StatelessWidget {
  const CountryCard({
    Key? key,
    required this.coutry,
    required this.timeZone,
    required this.iconSrc,
    required this.time,
    required this.period,
  }) : super(key: key);

  final String coutry, timeZone, iconSrc, time, period;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(233),
        child: AspectRatio(
          aspectRatio: 1.32,
          child: Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(20)),
            decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(context).primaryIconTheme.color!,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  coutry,
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                        fontSize: getProportionateScreenWidth(16),
                      ),
                ),
                SizedBox(height: 5),
                Text(timeZone),
                Row(
                  children: [
                    SvgPicture.asset(
                      iconSrc,
                      width: getProportionateScreenWidth(40),
                      color: Theme.of(context).accentIconTheme.color,
                    ),
                    Spacer(),
                    Text(
                      time,
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    RotatedBox(
                      quarterTurns: 3,
                      child: Text(period),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
