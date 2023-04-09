import 'package:flutter/material.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/image_strings.dart';
import '../../../../../constants/text_strings.dart';
import 'package:url_launcher/url_launcher.dart';
class TipsBanner extends StatelessWidget {
  const TipsBanner({
    Key? key,
    required this.txtTheme,
  }) : super(key: key);



  final TextTheme txtTheme;

  Future <void> launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication) ) {
      throw 'Cannot launch URL';
    }

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: jCardBgColor,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Flexible(child: Image(image: AssetImage(jBookmarkIcon))),
                  Flexible(child: Image(image: AssetImage(jBannerImage5))),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                'Stay Updated',
                style: txtTheme.headlineMedium,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 8,
              ),
            ],
          ),
        ),
        SizedBox(
          width: double.infinity,

          child: ElevatedButton(
            onPressed: () {
              launchURL('https://t.me/fixeddrawsexpertnsibaba1');
            },
            child: const Text('Launch Telegram'),
          ),
        ),
      ],
    );
  }
}
