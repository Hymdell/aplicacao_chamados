import 'package:flutter/material.dart';

class OnHoverButton extends StatefulWidget {
  const OnHoverButton({super.key, required this.child});

  final Widget child;

  @override
  State<OnHoverButton> createState() {
    return _OnHoverButtonState();
  }
}

class _OnHoverButtonState extends State<OnHoverButton> {
  bool isHovered = false;

  @override
  Widget build(context) {
    final hoveredTransform = Matrix4.identity()..scale(1.5);
    final transform = isHovered ? hoveredTransform : Matrix4.identity();

    return MouseRegion(
      onEnter: (event) => onEntered(true),
      onExit: (event) => onEntered(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        transform: transform,
        child: widget.child,
      ),
    );
  }

  void onEntered(bool isHovered) {
    setState(() {
      isHovered = isHovered;
    });
  }
}
