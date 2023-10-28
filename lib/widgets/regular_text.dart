import 'package:digital_gold/utils/app_colors.dart';
import 'package:flutter/material.dart';

Widget regularText(
    {required String text,
    Color? color,
    double size = 14,
    TextAlign textAlign = TextAlign.start,
    TextOverflow textOverflow = TextOverflow.visible,
    TextDecoration textDecoration = TextDecoration.none,
    double? lineHeight,
    int? maxLines,
    Color? backgroundColor,
    FontWeight fontWeight = FontWeight.normal}) {
  return Text(
    text,
    overflow: textOverflow,
    maxLines: maxLines,
    style: TextStyle(
      height: lineHeight,
      color: AppColors.secondaryTextColor,
      fontSize: size,
      backgroundColor: backgroundColor,
      fontWeight: fontWeight,
      decoration: textDecoration,
    ),
    textAlign: textAlign,
  );
}
