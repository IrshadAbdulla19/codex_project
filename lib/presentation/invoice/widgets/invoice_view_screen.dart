import 'package:flutter/material.dart';
import 'package:irshad_codex/core/constants.dart';
import 'package:irshad_codex/presentation/widgets/app_bar_widget.dart';
import 'package:irshad_codex/presentation/widgets/commen_card_widget.dart';
import 'package:irshad_codex/presentation/widgets/commen_text_widgets.dart';

class InvoiceViewScreen extends StatelessWidget {
  InvoiceViewScreen({super.key});

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var kmaxHgt = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: appBarWidget(context, "InvoiceView", [
        const Icon(
          Icons.edit,
          color: kWhite,
        ),
        const Icon(
          Icons.delete,
          color: kWhite,
        ),
        const Icon(
          Icons.more_vert_rounded,
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
            kHeight10,
            CommenCardWidget(
              child: Container(
                alignment: Alignment.center,
                height: kmaxHgt * 0.45,
                child: const Center(
                  child: Text("Invoisce Preview"),
                ),
              ),
            ),
            kHeight20,
            CommenCardWidget(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      smallHeadText("Name"),
                      const Text("1233445555"),
                    ],
                  ),
                  Column(
                    children: [
                      smallHeadText("₹ 250"),
                      const Text(
                        "paid ✔",
                        style: TextStyle(color: Colors.green),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            kHeight20,
            const CommenCardWidget(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InvoiceBottomWidgetItem(
                    text: "Print",
                    icon: Icons.print,
                  ),
                  InvoiceBottomWidgetItem(
                    text: "Download",
                    icon: Icons.download,
                  ),
                  InvoiceBottomWidgetItem(
                    text: "Share",
                    icon: Icons.share,
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

class InvoiceBottomWidgetItem extends StatelessWidget {
  const InvoiceBottomWidgetItem(
      {super.key, required this.text, required this.icon});
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: kBlack,
          child: Icon(icon),
        ),
        smallHeadText(text),
      ],
    );
  }
}
