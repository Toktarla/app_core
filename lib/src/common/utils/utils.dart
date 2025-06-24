import 'dart:io';
import 'dart:ui';

import 'package:app_core/src/common/constants/app_constants.dart';

final class AppUtils {
  /// `getDeviceType` - This function returns the device type of the device.
  /// If the device is Android, it returns 'android'.
  /// If the device is iOS, it returns 'ios'.
  /// If the device is unknown, it returns 'unknown'.
  static String getDeviceType() {
    if (Platform.isAndroid) {
      return 'android';
    } else if (Platform.isIOS) {
      return 'ios';
    }
    return 'unknown';
  }

  /// `adjustColorBrightness` - This function adjusts the brightness of a color
  /// by the specified amount.
  static Color adjustColorBrightness(Color color, double brightness) {
    assert(
      brightness >= 0.0 && brightness <= 1.0,
      'Brightness must be between 0.0 and 1.0',
    );

    final red = ((color.r * brightness) + (255 * (1.0 - brightness))).round();
    final green = ((color.g * brightness) + (255 * (1.0 - brightness))).round();
    final blue = ((color.b * brightness) + (255 * (1.0 - brightness))).round();

    return Color.fromARGB(color.a.toInt(), red, green, blue);
  }

  /// `adjustColorDarken` - This function darkens a color
  /// by the specified amount.
  static Color adjustColorDarken(Color color, double darken) {
    assert(
      darken >= 0.0 && darken <= 1.0,
      'Darken must be between 0.0 and 1.0',
    );

    final red = (color.r * (1.0 - darken)).round();
    final green = (color.g * (1.0 - darken)).round();
    final blue = (color.b * (1.0 - darken)).round();

    return Color.fromARGB(color.a.toInt(), red, green, blue);
  }

  static String formatPhoneNumber(String? phoneNumber) {
    if (phoneNumber == null || phoneNumber.isEmpty) return 'N/A';
    return AppConstants.createPhoneFormatter().maskText(phoneNumber);
  }

  static String formatPrice(num price) {
    final priceStr = price.toStringAsFixed(0);

    final priceList = priceStr.split('');
    final priceListReversed = priceList.reversed.toList();

    final result = <String>[];

    for (var i = 0; i < priceListReversed.length; i++) {
      if (i % 3 == 0 && i != 0) {
        result.add(' ');
      }
      result.add(priceListReversed[i]);
    }

    return '${result.reversed.join()} ₸';
  }

  static bool isSameDay(DateTime a, DateTime b) {
    return a.year == b.year && a.month == b.month && a.day == b.day;
  }
}
