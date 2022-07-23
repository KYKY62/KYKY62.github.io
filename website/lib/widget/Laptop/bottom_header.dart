import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class BottomHeader extends StatelessWidget {
  const BottomHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final urlInstagram =
        Uri.parse("https://www.instagram.com/rizkyakbarsrg__/");
    final urlFacebook =
        Uri.parse("https://www.facebook.com/profile.php?id=100005495509541");
    final urlGithub = Uri.parse("https://github.com/KYKY62");
    final urlLinkedln =
        Uri.parse("https://www.linkedin.com/in/rizky-akbar-siregar-a03ba5226/");
    return Container(
      height: 100,
      padding: const EdgeInsets.only(
        right: 110,
        left: 110,
        top: 20,
        bottom: 20,
      ),
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xffFDF6F0),
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Copyright @ 2022 Rizky All Right Reserved.",
            style: TextStyle(
              fontSize: 16,
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
            iconSize: 34,
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
            iconSize: 34,
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
            iconSize: 34,
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
            iconSize: 34,
          )
        ],
      ),
    );
  }
}
