import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_search/colors.dart';
import 'package:google_search/widgets/mobile/mobile_footer.dart';
import 'package:google_search/widgets/search.dart';
import 'package:google_search/widgets/web/search_buttons.dart';
import 'package:google_search/widgets/web/translational_buttons.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.grey,
          ),
        ),
        title: SizedBox(
          width: size.width * 0.34,
          child: const DefaultTabController(
              length: 2,
              child: TabBar(
                labelColor: blueColor,
                unselectedLabelColor: Colors.grey,
                indicatorColor: blueColor,
                tabs: [
                  Tab(
                    text: "All",
                  ),
                  Tab(text: "Images",
                  ),
                ],
              )),
        ),
        actions: [
          const SizedBox(width: 10),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/images/more-apps.svg',
                  color: primaryColor)),
          const SizedBox(width: 10),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10).copyWith(right: 10),
            child: MaterialButton(
                onPressed: () {},
                color: const Color(0xff1a73eb),
                child: const Text("Sign In",
                    style: TextStyle(color: Colors.white))),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: Column(
          children: [
            SizedBox(height: size.height * 0.24),
            const Expanded(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Search(),
                        SizedBox(height: 20),
                        SearchButtons(),
                        SizedBox(height: 20),
                        TranslationButtons(),
                      ],
                    ),
                    MobileFooter(),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
