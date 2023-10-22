import 'package:flutter/material.dart';

class DescriptionText extends StatelessWidget {
  const DescriptionText({
    super.key,
    required this.header,
    required this.value,
  });

  final String header;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$header: $value',
      style: const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: Colors.grey,
      ),
    );
  }
}


class CustomIndicator extends StatelessWidget {
  const CustomIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        height: 130,
        width: 130,
        child: CircularProgressIndicator(
          strokeWidth: 12,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.deepPurpleAccent),
        ),
      ),
    );
  }
}
