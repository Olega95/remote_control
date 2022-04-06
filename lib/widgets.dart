import 'package:flutter/material.dart';

import 'main.dart';
import 'package:get/get.dart';

enum ButtonSize {
  small,
  medium,
  big,
}

class ButtonKey extends StatelessWidget {
  final Color color;
  final Widget child;
  final ButtonSize size;
  final VoidCallback onTap;
  const ButtonKey({
    Key? key,
    this.size = ButtonSize.medium,
    this.color = Colors.black,
    required this.child,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width * 0.3,
      height: size == ButtonSize.small
          ? 55
          : size == ButtonSize.medium
              ? 80
              : size == ButtonSize.big
                  ? 110
                  : 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.white),
        color: color == Colors.red[800] ? Colors.red[800] : Colors.transparent,
      ),
      child: InkWell(
        onTap: onTap,
        splashColor: Colors.transparent,
        borderRadius: BorderRadius.circular(15),
        child: child,
      ),
    );
  }
}

class NavigationCircle extends StatelessWidget {
  final VoidCallback onTapOk;
  final VoidCallback onTapLeft;
  final VoidCallback onTapRight;
  final VoidCallback onTapUp;
  final VoidCallback onTapDown;
  const NavigationCircle({
    Key? key,
    required this.onTapOk,
    required this.onTapLeft,
    required this.onTapRight,
    required this.onTapUp,
    required this.onTapDown,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.width * 0.7,
      width: context.width * 0.7,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(110),
        border: Border.all(
          color: Colors.white,
        ),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment(-0.96, 0),
            child: InkWell(
              onTap: onTapLeft,
              borderRadius: BorderRadius.circular(30),
              splashColor: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 40),
                child: Icon(
                  Icons.keyboard_arrow_left_rounded,
                  size: 55,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, -0.96),
            child: InkWell(
              onTap: onTapUp,
              borderRadius: BorderRadius.circular(30),
              splashColor: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
                child: Icon(
                  Icons.keyboard_arrow_up_rounded,
                  size: 55,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.96, 0),
            child: InkWell(
              onTap: onTapRight,
              borderRadius: BorderRadius.circular(30),
              splashColor: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 40),
                child: Icon(
                  Icons.keyboard_arrow_right_rounded,
                  size: 55,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, 0.96),
            child: InkWell(
              onTap: onTapDown,
              borderRadius: BorderRadius.circular(30),
              splashColor: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
                child: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  size: 55,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Center(
            child: InkWell(
              onTap: onTapOk,
              borderRadius: BorderRadius.circular(60),
              splashColor: Colors.transparent,
              child: Container(
                height: context.width * 0.3,
                width: context.width * 0.3,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                  ),
                ),
                child: Center(
                  child: Text(
                    'OK',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CircleButtonKey extends StatelessWidget {
  final Widget child;
  final VoidCallback onTap;
  const CircleButtonKey({Key? key, required this.child, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(40),
      splashColor: Colors.transparent,
      child: Container(
        height: context.width * 0.2,
        width: context.width * 0.2,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.white,
          ),
        ),
        child: Center(child: child),
      ),
    );
  }
}

class TimerButtonKey extends StatelessWidget {
  final Widget child;
  final VoidCallback onTap;
  const TimerButtonKey({Key? key, required this.child, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(40),
      splashColor: Colors.transparent,
      child: Container(
        height: context.width * 0.2,
        width: context.width * 0.4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          border: Border.all(
            color: Colors.white,
          ),
        ),
        child: Center(child: child),
      ),
    );
  }
}
