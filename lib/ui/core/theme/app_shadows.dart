import 'package:material_ui/material_ui.dart';

abstract final class AppShadows {
  static const xs = [BoxShadow(color: Color(0x14000000), offset: Offset(0, 2), blurRadius: 6)];

  static const sm = [BoxShadow(color: Color(0x1A000000), offset: Offset(0, 4), blurRadius: 12)];

  static const md = [BoxShadow(color: Color(0x26000000), offset: Offset(0, 12), blurRadius: 24)];

  static const lg = [BoxShadow(color: Color(0x26000000), offset: Offset(0, 20), blurRadius: 40)];

  static const glow = [BoxShadow(color: Color(0x66FFD133), blurRadius: 8)];

  static const fabGlow = [BoxShadow(color: Color(0x80FFD133), offset: Offset(0, 6), blurRadius: 16)];
}
