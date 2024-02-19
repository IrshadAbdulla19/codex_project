import 'package:flutter/material.dart';
import 'package:irshad_codex/core/constants.dart';
import 'package:irshad_codex/presentation/widgets/commen_card_widget.dart';
import 'widgets/fifth_part_widget.dart';
import 'widgets/fourth_part_widget.dart';
import 'widgets/head_widget.dart';
import 'widgets/landing_page_table.dart';
import 'widgets/table_bottom_widget.dart';
import 'widgets/third_part_widget.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    var kHht = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [kBlack, kWhite],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ),
            Container(
              color: kWhite.withOpacity(0.5),
              height: kHht * 0.08,
              child: const Row(
                children: [
                  Expanded(
                      child: HeadWidgetsForLandingPage(
                    name: "New Invoice",
                  )),
                  Expanded(
                      child: HeadWidgetsForLandingPage(
                    name: "New Estimate",
                  )),
                  Expanded(
                      child: HeadWidgetsForLandingPage(
                    name: "New Payment",
                  )),
                ],
              ),
            ),
            SizedBox(height: kHht * 0.39, child: LandingPageTableWidget()),
            SizedBox(
                height: kHht * 0.08,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: CommenCardWidget(
                        child: TableBottomWidgets(
                          name: "Reports",
                          icon: Icons.view_list_outlined,
                        ),
                      ),
                    ),
                    Expanded(
                      child: CommenCardWidget(
                        child: TableBottomWidgets(
                          name: "Purchase Return",
                          icon: Icons.maps_home_work_rounded,
                        ),
                      ),
                    ),
                  ],
                )),
            SizedBox(height: kHht * 0.15, child: const ThirdPartWidget()),
            SizedBox(height: kHht * 0.08, child: const ForthPartWidget()),
            kHeight10,
            SizedBox(height: kHht * 0.12, child: const FifthPartWidget()),
          ],
        ),
      ),
    ));
  }
}
