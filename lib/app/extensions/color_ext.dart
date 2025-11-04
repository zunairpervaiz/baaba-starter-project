import 'dart:math';
import 'dart:ui';

extension ColorExt on Color {
  static Color fromHex(String hexString) => Color(int.parse(hexString.replaceFirst('#', '0xFF')));

  static Color get getRandomLightColor {
    final random = Random();

    final a = int.parse('FF', radix: 16);
    final r = 100 + random.nextInt(100);
    final g = 100 + random.nextInt(100);
    final b = 100 + random.nextInt(100);
    return Color.fromARGB(a, r, g, b);
  }
}
