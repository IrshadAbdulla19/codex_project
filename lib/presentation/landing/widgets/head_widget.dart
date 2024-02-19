import 'package:flutter/material.dart';
import 'package:irshad_codex/core/constants.dart';
import 'package:irshad_codex/presentation/customer/customer_master_screen.dart';
import 'package:irshad_codex/presentation/invoice/invoice_screen.dart';
import 'package:irshad_codex/presentation/product/product_screen.dart';
import 'package:irshad_codex/presentation/widgets/commen_text_widgets.dart';

class HeadWidgetsForLandingPage extends StatelessWidget {
  const HeadWidgetsForLandingPage({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        name == "New Invoice"
            ? Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const CoustomerListScreen();
                },
              ))
            : name == "New Estimate"
                ? Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const InvoiceListScreen();
                    },
                  ))
                : Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const ProuductListScreen();
                    },
                  ));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        padding: const EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [kBlack.withOpacity(0.4), kWhite],
            ),
            boxShadow: const [
              BoxShadow(
                  spreadRadius: 2,
                  blurRadius: 3,
                  blurStyle: BlurStyle.outer,
                  color: kBlack)
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add),
              color: kWhite,
            ),
            Expanded(
              child: smallHeadTextWhite(
                name,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
