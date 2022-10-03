import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:dio/dio.dart';
import 'package:esam_sharf/constants.dart';
import 'package:esam_sharf/screens/main/components/contact.dart';
import 'package:esam_sharf/screens/main/components/languages.dart';
import 'package:esam_sharf/screens/main/components/skills.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:open_file/open_file.dart';
import 'package:url_launcher/url_launcher.dart';
import 'area_info.dart';
import 'coding.dart';
import 'package:file_picker/file_picker.dart';
import 'knowledges.dart';
import 'my_info.dart';
import 'package:esam_sharf/utils.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(KdefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "CONTACT",
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    const Divider(),
                    const AreaInfoText(
                      title: "Residence",
                      text: "France",
                    ),
                    const AreaInfoText(
                      title: "City",
                      text: "Lille",
                    ),
                    const AreaInfoText(
                      title: "Age",
                      text: "28",
                    ),
                    const AreaInfoText(
                      title: "Phone ",
                      text: "+33 07 83 28 77 73",
                    ),
                    const AreaInfoText(
                      title: "Email ",
                      text: "esamsharf2@gmail.com",
                    ),
                    const Skills(),
                    const SizedBox(
                      height: KdefaultPadding,
                    ),
                    const Coding(),
                    const Knowledges(),
                    const Languages(),
                    const Divider(),
                    const SizedBox(
                      height: KdefaultPadding / 2,
                    ),
                    TextButton(
                      onPressed: () {
                        launchURL(
                          "https://drive.google.com/drive/folders/1nzvO_UHjmJcP46H7n8VBFtXzI0Q_SxE0",
                        );
                      },
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "DOWNLOAD CV",
                              style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color),
                            ),
                            const SizedBox(
                              width: KdefaultPadding / 2,
                            ),
                            SvgPicture.asset(
                              "assets/icons/download.svg",
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: KdefaultPadding / 2),
                      color: const Color(0xFF24242E),
                      child: Row(
                        children: [
                          const Spacer(),
                          IconButton(
                            onPressed: () => Utils.openLink(
                                url: "https://www.instagram.com/asomisharf/"),
                            icon:
                                SvgPicture.asset("assets/icons/instagram.svg"),
                          ),
                          IconButton(
                            onPressed: () => Utils.openLink(
                                url: "https://www.facebook.com/esamsharf2/"),
                            icon: SvgPicture.asset("assets/icons/facebook.svg"),
                          ),
                          IconButton(
                            onPressed: () => Utils.openLink(
                                url: "https://github.com/EsamSHARFELDIN"),
                            icon: SvgPicture.asset("assets/icons/github.svg"),
                          ),
                          IconButton(
                            onPressed: () => Utils.openLink(
                                url:
                                    "https://www.linkedin.com/in/sharfeldin-esam-b75285149/"),
                            icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                          ),
                          IconButton(
                            onPressed: () => Utils.openLink(
                                url: "https://twitter.com/esamsharf4"),
                            icon: SvgPicture.asset("assets/icons/twitter.svg"),
                          ),
                          const Spacer(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

void launchURL(String _url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
