import 'package:flame/components.dart';
import 'package:flame/text.dart';
import 'package:flutter/material.dart';
import 'package:test/test.dart';

void main() {
  group('TextPaint', () {
    test('copyWith returns a new instance with the new values', () {
      const style = TextStyle(fontSize: 12, fontFamily: 'Times');
      final tp = TextPaint(style: style)
          .copyWith((t) => t.copyWith(fontFamily: 'Helvetica'));
      expect(tp.style.fontSize, 12);
      expect(tp.style.fontFamily, 'Helvetica');
    });
  });
}
