import 'package:flutter/material.dart';
import 'package:irshad_codex/core/constants.dart';
import 'package:irshad_codex/presentation/customer/widgets/create_customer.dart';
import 'package:irshad_codex/presentation/widgets/app_bar_widget.dart';
import 'package:irshad_codex/presentation/widgets/commen_card_widget.dart';
import 'package:irshad_codex/presentation/widgets/commen_text_widgets.dart';

class ProductCreateScreen extends StatelessWidget {
  ProductCreateScreen({super.key});

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var maxHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: appBarWidget(context, "Product Create", [
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
        child: Column(
          children: [
            kHeight20,
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
                ],
              ),
            ),
            kHeight20,
            DefaultTabController(
              length: 3, // Number of tabs
              child: Column(
                children: [
                  TabBar(
                    indicatorColor: kWhite,
                    tabs: [
                      Tab(
                        child: smallHeadText(
                          "Pricing",
                        ),
                      ),
                      Tab(
                          child: smallHeadText(
                        "Stock",
                      )),
                      Tab(
                          child: smallHeadText(
                        "Others",
                      )),
                    ],
                  ),
                  SizedBox(
                    height: maxHeight * 0.63,
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
                                    head: "Opening Balance",
                                    widget: const Icon(Icons.error_outline),
                                  ),
                                  kHeight10,
                                  TextFormWidget(
                                    controller: controller,
                                    head: "Sales Price",
                                    widget: const Icon(Icons.error_outline),
                                  ),
                                  kHeight10,
                                  TextFormWidget(
                                    controller: controller,
                                    head: "Purchase Price",
                                    widget: const Icon(Icons.error_outline),
                                  ),
                                  kHeight10,
                                  Row(
                                    children: [
                                      Expanded(
                                        child: TextFormWidget(
                                          controller: controller,
                                          head: "HSN",
                                          widget:
                                              const Icon(Icons.error_outline),
                                        ),
                                      ),
                                      kWidth10,
                                      Expanded(
                                        child: TextFormWidget(
                                          controller: controller,
                                          head: "GST",
                                          widget:
                                              const Icon(Icons.error_outline),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
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
