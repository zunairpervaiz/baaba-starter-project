import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

final class ShareUtils {
  const ShareUtils._();

  static Future<ShareResult?> share(BuildContext context, String text, String? subject) async {
    if (!context.mounted) return null;

    final box = context.findRenderObject() as RenderBox;
    final sharePositionOrigin = box.localToGlobal(Offset.zero) & box.size;

    return SharePlus.instance.share(ShareParams(text: text, subject: subject, sharePositionOrigin: sharePositionOrigin));
  }

  static Future<ShareResult?> shareXFile(BuildContext context, List<XFile> files, {String? text, String? subject}) async {
    try {
      if (!context.mounted) return null;

      final box = context.findRenderObject() as RenderBox;
      final sharePositionOrigin = box.localToGlobal(Offset.zero) & box.size;

      return SharePlus.instance.share(ShareParams(files: files, text: text, subject: subject, sharePositionOrigin: sharePositionOrigin));
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }
}
