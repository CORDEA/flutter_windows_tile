import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class WindowsTile extends StatefulWidget {
  const WindowsTile({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  State<WindowsTile> createState() => _WindowsTileState();
}

class _WindowsTileState extends State<WindowsTile> {
  static const _nan = Offset(-1, -1);

  var _cursorPosition = _nan;
  var _tapPosition = _nan;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (event) {
        setState(() {
          _cursorPosition = event.localPosition;
        });
      },
      child: GestureDetector(
        onLongPressDown: (details) {
          _tapPosition = details.localPosition;
        },
        onLongPressCancel: () {
          _tapPosition = _nan;
        },
        onLongPressEnd: (details) {
          _tapPosition = _nan;
        },
        child: CustomPaint(
          foregroundPainter: _Painter(
            cursorPosition: _cursorPosition,
            tapPosition: _tapPosition,
          ),
          child: widget.child,
        ),
      ),
    );
  }
}

class _Painter extends CustomPainter {
  _Painter({required this.cursorPosition, required this.tapPosition});

  final Offset cursorPosition;
  final Offset tapPosition;
  final _paint = Paint();

  @override
  void paint(Canvas canvas, Size size) {
    if (size.isEmpty || cursorPosition.isNegative) {
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
