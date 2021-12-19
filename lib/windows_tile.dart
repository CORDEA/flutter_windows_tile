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
  var _cursorPosition = const Offset(-1, -1);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (event) {
        setState(() {
          _cursorPosition = event.localPosition;
        });
      },
      child: CustomPaint(
        foregroundPainter: _Painter(cursorPosition: _cursorPosition),
        child: widget.child,
      ),
    );
  }
}

class _Painter extends CustomPainter {
  _Painter({required this.cursorPosition});

  final Offset cursorPosition;
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
