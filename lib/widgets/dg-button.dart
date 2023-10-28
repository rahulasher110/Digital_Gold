import 'package:digital_gold/utils/app_colors.dart';
import 'package:digital_gold/utils/app_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DgButton extends StatefulWidget {
  final String buttonName;
  final double? widthMaxSize;
  final double? widthMinSize;
  final VoidCallback onPressed;

  const DgButton(
      {super.key,
      required this.buttonName,
      this.widthMaxSize,
      required this.onPressed,
      this.widthMinSize});

  @override
  State<DgButton> createState() => _DgButtonState();
}

class _DgButtonState extends State<DgButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: AppDimensions.screenWidth,
        child: ElevatedButton(
          onPressed: widget.onPressed,
          style: ElevatedButton.styleFrom(
              maximumSize: Size(widget.widthMaxSize ?? 64, 146),
              minimumSize: Size(widget.widthMinSize ?? 64, 46),
              backgroundColor: AppColors.secondaryTextColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              )),
          child: Text(
            widget.buttonName,
            style: TextStyle(fontSize: 20, color: AppColors.primaryColor),
          ),
        ));
  }
}
