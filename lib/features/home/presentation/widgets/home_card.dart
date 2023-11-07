import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    super.key,
    required this.width,
    required this.height,
    required this.color,
    required this.icon,
    required this.text,
  });

  final double width;
  final double height;
  final Color color;
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Memunculkan SnackBar ketika diklik
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(
              SnackBar(content: Text("Kamu telah menekan tombol $text!")));
      },
      child: Container(
        width: width,
        height: 1 / 4 * height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: color,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text,
                  style: const TextStyle(
                    fontSize: 24,
                  ),
                ),
                Icon(
                  icon,
                  size: 30,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
