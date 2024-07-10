import 'package:flutter/material.dart';
import 'package:texnomart/presentation/theme/light_colors.dart';
import 'package:texnomart/presentation/theme/my_images.dart';

class BoldText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final double height;

  const BoldText(
      {super.key,
      required this.text,
      this.fontSize = 16,
      this.color = Colors.black,
      this.height = .1});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.start,
      // softWrap: true,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        height: height,
      ),
    );
  }
}

class NormalText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final double height;
  final TextAlign align;

  const NormalText(
      {super.key,
      required this.text,
      this.fontSize = 14,
      this.color = Colors.black,
      this.height = 0.1,
      this.align = TextAlign.start});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      softWrap: true,
      overflow: TextOverflow.clip,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeight.normal,
        height: height,
      ),
    );
  }
}

extension MyStringExtension on String {
  toColor() {
    var hexColor = this.replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
  }

  String formatNumber() {
    var number = this;
    // Remove any existing spaces
    number = number.replaceAll(' ', '');

    // Reverse the number string
    String reversed = number.split('').reversed.join('');

    // Add a space every three digits
    String formattedReversed = '';
    for (int i = 0; i < reversed.length; i++) {
      if (i > 0 && i % 3 == 0) {
        formattedReversed += ' ';
      }
      formattedReversed += reversed[i];
    }

    // Reverse back to the original order and return
    return formattedReversed.split('').reversed.join('');
  }
}

class CustomCheckbox extends StatefulWidget {
  final bool value;

  const CustomCheckbox(
      {required this.value, super.key});

  @override
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  @override
  Widget build(BuildContext context) {
    return widget.value
        ? Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: LightColors.primary,
              borderRadius: BorderRadius.circular(6),
            ),
            width: 22,
            height: 22,
            child: Image.asset(
              MyImages.check,
              color: Colors.black,
            ))
        : Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(6),
                border: Border.all(
                    color: Colors.grey.withAlpha(90), width: 1.5)),
            width: 22,
            height: 22,
            child: Image.asset(
              MyImages.check,
              color: Colors.transparent,
            ));
  }
}

AppBar myAppBar(String title) {
  return AppBar(
    backgroundColor: LightColors.primary,
    scrolledUnderElevation: 0.0,
    title: Align(
      alignment: Alignment.centerLeft,
      child: NormalText(text: title, fontSize: 18,),
    ),
  );
}


Widget myButton(String text, {Color background = LightColors.primary, Color textColor = Colors.black, double textSize = 14, double height = 42}) {
  return InkWell(
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    child: Container(
      height: height,
      constraints: const BoxConstraints(
        minHeight: 32,
        minWidth: double.infinity,
      ),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(8)
      ),
      child: BoldText(
        text: text,
        fontSize: textSize,
        color: textColor,
      ),
    ),
  );
}