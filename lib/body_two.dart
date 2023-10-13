import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BodyTwo extends StatelessWidget {
  const BodyTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: const [
            Icon(
              Icons.access_time,
              color: Colors.grey,
              size: 14,
            ),
            SizedBox(width: 8),
            Text(
              "10 mins",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            )
          ],
        ),
        const SizedBox(width: 32),
        Row(
          children: [
            SvgPicture.asset(
              "assets/icons/bell.svg",
              height: 14,
              colorFilter: const ColorFilter.mode(
                Colors.grey,
                BlendMode.srcIn,
              ),
            ),
            const SizedBox(width: 8),
            const Text(
              "1 Serving",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            )
          ],
        ),
      ],
    );
  }
}
