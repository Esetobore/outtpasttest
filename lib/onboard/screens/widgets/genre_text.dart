import 'package:flutter/material.dart';
import 'package:outtapptest/theme/apktheme.dart';

import '../../../constants/colors.dart';

class GenreText extends StatelessWidget {
  const GenreText({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return ElevatedButton(
      onPressed: (){},
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
            side: BorderSide(color: isDarkMode ? Colors.white : Colors.black, width: 3.0,)
        ),
      ),
      child: Row(
        children: [
          Text(title, style: Theme
              .of(context)
              .textTheme
              .bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}