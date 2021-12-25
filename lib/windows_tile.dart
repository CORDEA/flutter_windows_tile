import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'windows_tile.freezed.dart';

class WindowsTile extends StatefulWidget {
  const WindowsTile({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  State<WindowsTile> createState() => _WindowsTileState();
}

class _WindowsTileState extends State<WindowsTile>
    with SingleTickerProviderStateMixin {
  static const _nan = Offset(-1, -1);

  var _cursorPosition = _nan;
  var _tapPosition = _nan;

  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    )..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (event) {
        setState(() {
          _cursorPosition = event.localPosition;
        });
      },
      onExit: (_) {
        setState(() {
          _cursorPosition = _nan;
        });
      },
      child: GestureDetector(
        onLongPressDown: (details) {
          setState(() {
            _tapPosition = details.localPosition;
          });
          _controller.forward();
        },
        onLongPressCancel: () {
          setState(() {
            _tapPosition = _nan;
          });
          _controller.reverse();
        },
        onLongPressEnd: (details) {
          setState(() {
            _tapPosition = _nan;
          });
          _controller.reverse();
        },
        child: CustomPaint(
          foregroundPainter: _Painter(
            cursorPosition: _cursorPosition,
            tapPosition: _tapPosition,
            animationValue: _controller.value,
          ),
          child: widget.child,
        ),
      ),
    );
  }
}

class _Painter extends CustomPainter {
  _Painter({
    required this.cursorPosition,
    required this.tapPosition,
    required this.animationValue,
  });

  final Offset cursorPosition;
  final Offset tapPosition;
  final double animationValue;

  final _paint = Paint();

  @override
  void paint(Canvas canvas, Size size) {
    if (size.isEmpty) {
      return;
    }

    if (!tapPosition.isNegative) {
      _paint.shader = ui.Gradient.radial(
        cursorPosition,
        size.width / (4 + (1 - animationValue) * 2),
        [Colors.white30, Colors.white10],
      );
      canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), _paint);
      return;
    }

    if (cursorPosition.isNegative) {
      return;
    }
    _paint.shader = ui.Gradient.radial(
      cursorPosition,
      size.width / 2.5,
      [Colors.white.withOpacity(0.2), Colors.white10],
    );
    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), _paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

extension _OffsetExt on Offset {
  bool get isNegative => dx < 0 || dy < 0;
}

@freezed
class _Action with _$_Action {
  const factory _Action.none() = _None;

  const factory _Action.hovered({
    required Offset position,
  }) = _Hovered;

  const factory _Action.tapped({
    required Offset position,
    required double progress,
  }) = _Tapped;
}
