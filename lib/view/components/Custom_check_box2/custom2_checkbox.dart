import 'package:flutter/material.dart';

class Custom2Checkbox extends StatelessWidget {
  final Color borderColor;
  final Color? checkedColor;
  final double size;
  final bool value;
  final ValueChanged<bool>? onChanged;

  const Custom2Checkbox({
    super.key,
    this.borderColor = Colors.black,
    this.checkedColor,
    this.size = 22,
    required this.value,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onChanged != null) {
          onChanged!(!value);
        }
      },
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: value ? checkedColor : Colors.transparent,
          border: Border.all(
            color: borderColor,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(1),
        ),
        child: value
            ? Icon(Icons.check, size: size * 0.72, color: Colors.white)
            : null,
      ),
    );
  }
}
