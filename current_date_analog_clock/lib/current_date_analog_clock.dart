library current_date_analog_clock;

import 'package:flutter/material.dart';
import 'package:flutter_analog_clock/flutter_analog_clock.dart';
import 'package:flutter_svg/flutter_svg.dart';

 
/// 5 required properties need to use
class CurrentDateAnalogClock extends StatelessWidget {
  /// the width for widget (size actually)
  final double width;
  final Color hourHandColor;
  final Color minuteHandColor;
  final Color secondHandColor;
  final Color centerPointColor;

  const CurrentDateAnalogClock({
    super.key,
    required this.width,
    required this.hourHandColor,
    required this.minuteHandColor,
    required this.secondHandColor,
    required this.centerPointColor,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          'assets/clock.svg',
          width: width,
        ),
        Positioned(
          top: 12,
          left: 0,
          right: 0,
          bottom: 0,
          child: Center(
            child: Container(
              color: Colors.transparent,
              child:   AnalogClock(
                dialColor: Colors.transparent,
                hourNumberColor: Colors.transparent,
                markingColor: Colors.transparent,
                 hourHandColor: hourHandColor,
                minuteHandColor: minuteHandColor,
                secondHandColor: secondHandColor,
                centerPointColor: centerPointColor,
                secondHandWidthFactor: 2,
                secondHandLengthFactor: 0.6,
                minuteHandLengthFactor: 0.75,
                hourHandLengthFactor: 0.65,
                hourHandWidthFactor: 1.5,
                minuteHandWidthFactor: 2,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
