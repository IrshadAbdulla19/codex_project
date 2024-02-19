import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:irshad_codex/core/constants.dart';
import 'package:irshad_codex/presentation/widgets/app_bar_widget.dart';
import 'package:irshad_codex/presentation/widgets/commen_card_widget.dart';
import 'package:irshad_codex/presentation/widgets/commen_text_widgets.dart';

class CreateCustomerScreen extends StatelessWidget {
  CreateCustomerScreen({super.key});

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var maxHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: appBarWidget(context, "Party Create", [
        const Icon(
          Icons.notifications,
          color: kWhite,
        )
      ]),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [kBlack, kWhite],
          ),
        ),
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            CommenCardWidget(
              child: Column(
                children: [
                  TextFormWidget(
                    controller: controller,
                    head: "Party name",
                    widget: const Text(
                      "*",
                      style: TextStyle(color: kRed),
                    ),
                  ),
                  kHeight20,
                  TextFormWidget(
                    controller: controller,
                    head: "Coustomer name",
                    widget: const Text(
                      "*",
                      style: TextStyle(color: kRed),
                    ),
                  ),
                ],
              ),
            ),
            kHeight20,
            DefaultTabController(
              length: 3, // Number of tabs
              child: Column(
                children: [
                  const TabBar(
                    tabs: [
                      Tab(
                        child: Text(
                          "Bussiness info",
                        ),
                      ),
                      Tab(
                          child: Text(
                        "Credit Info",
                      )),
                      Tab(
                          child: Text(
                        "Other Details",
                      )),
                    ],
                  ),
                  SizedBox(
                    height: maxHeight * 0.5,
                    child: TabBarView(
                      children: [
                        // Contents of Tab 1
                        Column(
                          children: [
                            kHeight20,
                            CommenCardWidget(
                              child: Column(
                                children: [
                                  TextFormWidget(
                                    controller: controller,
                                    head: "GST Number",
                                    widget: const Text(
                                      "*",
                                      style: TextStyle(color: kRed),
                                    ),
                                  ),
                                  kHeight20,
                                  TextFormWidget(
                                    controller: controller,
                                    head: "PAN Number",
                                    widget: const Text(
                                      "*",
                                      style: TextStyle(color: kRed),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            kHeight20,
                            const CommenCardWidget(
                              child: Row(
                                children: [
                                  Icon(Icons.home_work_outlined),
                                  kWidth10,
                                  AutoSizeText("Billing Address"),
                                  Spacer(),
                                  Icon(Icons.navigate_next_sharp)
                                ],
                              ),
                            ),
                            kHeight20,
                            ElevatedButton(
                                onPressed: () {}, child: const Text("Save"))
                          ],
                        ),
                        // Contents of Tab 2
                        const Center(
                          child: Text('Tab 2 Content'),
                        ),
                        // Contents of Tab 3
                        const Center(
                          child: Text('Tab 3 Content'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TextFormWidget extends StatelessWidget {
  const TextFormWidget(
      {super.key,
      required this.widget,
      required this.head,
      required this.controller});
  final Widget widget;
  final String head;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [smallHeadText(head), kWidth5, widget],
        ),
        kHeight10,
        TextFormField(
          decoration: InputDecoration(
              filled: true,
              fillColor: kWhite.withOpacity(0.35),
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(5))),
        ),
      ],
    );
  }
}
