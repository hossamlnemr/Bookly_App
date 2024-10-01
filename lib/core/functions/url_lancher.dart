import 'package:bookly_app/core/functions/custom_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> setupUrlLancher(BuildContext context, String url) async {
  Uri uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    // ignore: use_build_context_synchronously
    customSnackBar(context);
  }
}
