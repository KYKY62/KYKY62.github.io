import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class BottomHeaderPhone extends StatelessWidget {
  const BottomHeaderPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final urlInstagram =
        Uri.parse("https://www.instagram.com/rizkyakbarsrg__/");
    final urlFacebook =
        Uri.parse("https://www.facebook.com/profile.php?id=100005495509541");
    final urlGithub = Uri.parse("https://github.com/KYKY62");
    final urlLinkedln =
        Uri.parse("https://www.linkedin.com/in/rizky-akbar-siregar-a03ba5226/");
    return LayoutBuilder(
      builder: (context, constraints) => Container(
        height: 100,
        padding: const EdgeInsets.only(
          right: 10,
          left: 10,
          top: 20,
          bottom: 20,
        ),
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color(0xffFDF6F0),
        ),
        child: Row(
          children: [
            Text(
              "Copyright @ 2022 Rizky\nAll Right Reserved.",
              style: TextStyle(
                fontSize: constraints.minWidth <= 320 ? 10 : 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                launchUrl(
                  urlFacebook,
                  mode: LaunchMode.externalNonBrowserApplication,
                );
              },
              icon: const Icon(MdiIcons.facebook),
              color: Colors.blue,
              iconSize: 24,
            ),
            IconButton(
              onPressed: () {
                launchUrl(
                  urlGithub,
                  mode: LaunchMode.externalNonBrowserApplication,
                );
              },
              icon: const Icon(MdiIcons.github),
              // color: Colors.blue,
              iconSize: 24,
            ),
            IconButton(
              onPressed: () {
                launchUrl(
                  urlInstagram,
                  mode: LaunchMode.externalNonBrowserApplication,
                );
              },
              icon: const Icon(MdiIcons.instagram),
              color: const Color(0xffE34758),
              iconSize: 24,
            ),
            IconButton(
              onPressed: () {
                launchUrl(
                  urlLinkedln,
                  mode: LaunchMode.externalNonBrowserApplication,
                );
              },
              icon: const Icon(MdiIcons.linkedin),
              color: const Color(0xff1275B1),
              iconSize: 24,
            )
          ],
        ),
      ),
    );
  }
}
