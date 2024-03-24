import 'package:flutter/material.dart';
import 'package:task4_1_1/timeLine/components/evencard.dart';
import 'package:timeline_tile/timeline_tile.dart';

class PetroTimeLine extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final eventCard;
  PetroTimeLine(
      {super.key,
      required this.isFirst,
      required this.isLast,
      required this.isPast,
      required this.eventCard});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: TimelineTile(
        isFirst: isFirst,
        isLast: isLast,
        beforeLineStyle: LineStyle(
            color: isPast ? Colors.deepPurple : Colors.purple.shade100),
        indicatorStyle: IndicatorStyle(
          width: 40, //великі кружечки
          color: isPast ? Colors.purple : Colors.purple.shade100,
          iconStyle: IconStyle(
            iconData: Icons.done,
            color: isPast ? Colors.white : Colors.purple.shade100,
          ),
          height: 100,
        ),
        endChild: EventCard(
          isPast: isPast,
          child: eventCard,
        ),
      ),
    );
  }
}
