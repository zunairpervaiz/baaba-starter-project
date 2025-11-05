import 'dart:math';
import 'dart:ui';

extension ColorExt on Color {
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  static Color get getRandomLightColor {
    final random = Random();

    final a = int.parse('FF', radix: 16);
    final r = 100 + random.nextInt(100);
    final g = 100 + random.nextInt(100);
    final b = 100 + random.nextInt(100);
    return Color.fromARGB(a, r, g, b);
  }
}
