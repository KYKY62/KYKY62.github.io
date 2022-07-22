import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class BottomHeader extends StatelessWidget {
  const BottomHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final UrlInstagram =
        Uri.parse("https://www.instagram.com/rizkyakbarsrg__/");
    final UrlFacebook =
        Uri.parse("https://www.facebook.com/profile.php?id=100005495509541");
    final UrlGithub = Uri.parse("https://github.com/KYKY62");
    final UrlLinkedln =
        Uri.parse("https://www.linkedin.com/in/rizky-akbar-siregar-a03ba5226/");
    return Container(
      height: 100,
      padding: const EdgeInsets.only(
        right: 110,
        left: 110,
        top: 20,
        bottom: 20,
      ),
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xffFDF6F0),
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Copyright @ 2022 Rizky All Right Reserved.",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          Spacer(),
          IconButton(
            onPressed: () {
              launchUrl(
                UrlFacebook,
                mode: LaunchMode.externalNonBrowserApplication,
              );
            },
            icon: Icon(MdiIcons.facebook),
            color: Colors.blue,
            iconSize: 34,
          ),
          IconButton(
            onPressed: () {
              launchUrl(
                UrlGithub,
                mode: LaunchMode.externalNonBrowserApplication,
              );
            },
            icon: Icon(MdiIcons.github),
            // color: Colors.blue,
            iconSize: 34,
          ),
          IconButton(
            onPressed: () {
              launchUrl(
                UrlInstagram,
                mode: LaunchMode.externalNonBrowserApplication,
              );
            },
            icon: Icon(MdiIcons.instagram),
            color: Color(0xffE34758),
            iconSize: 34,
          ),
          IconButton(
            onPressed: () {
              launchUrl(
                UrlLinkedln,
                mode: LaunchMode.externalNonBrowserApplication,
              );
            },
            icon: Icon(MdiIcons.linkedin),
            color: Color(0xff1275B1),
            iconSize: 34,
          )
        ],
      ),
    );
  }
}
