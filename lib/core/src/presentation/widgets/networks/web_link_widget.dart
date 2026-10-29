import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

class WebLinkWidget extends StatelessWidget {
  final String link;

  const WebLinkWidget({super.key, required this.link});

  @override
  Widget build(BuildContext context) {
    return SelectableLinkify(
      maxLines: 1,
      onOpen: (link) async {
        if (!await launchUrl(Uri.parse(link.url))) {
          throw Exception('Could not launch ${link.url}');
        }
      },
      text: link,
    );
  }
}
