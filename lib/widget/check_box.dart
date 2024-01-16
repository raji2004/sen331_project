import 'package:flutter/material.dart';
import './widget.dart';
import '../utils/utils.dart';

class CheckBox extends StatefulWidget {
  const CheckBox(
    this.text, {
    super.key,
  });
  final String text;

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          onTap: () {
            setState(() {
              isChecked = !isChecked;
            });
          },
          child: Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(
              color: isChecked ? AppColors.red : Primary.white,
              border: Border.all(color: Primary.black), // Optional border
              borderRadius: BorderRadius.circular(0),
            ),
            child: isChecked
                ? const Icon(
                    Icons.check,
                    color: Primary.black,
                    size: 15,
                  )
                : null,
          ),
        ),
       const SizedBox(width: 8), // Add some spacing
        MyText(
          widget.text,
          fontSize: 16,
        ),
      ],
    );
  }
}
