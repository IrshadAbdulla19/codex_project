import 'package:flutter/material.dart';
import 'package:irshad_codex/core/constants.dart';
import 'package:irshad_codex/presentation/widgets/app_bar_widget.dart';

import 'widgets/invoice_list_item.dart';
import 'widgets/invoice_view_screen.dart';

class InvoiceListScreen extends StatefulWidget {
  const InvoiceListScreen({super.key});

  @override
  State<InvoiceListScreen> createState() => _InvoiceListScreenState();
}

class _InvoiceListScreenState extends State<InvoiceListScreen> {
  double screenWidth = 0;

  bool startAnimation = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        startAnimation = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: appBarWidget(context, "Invoice", [
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
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          separatorBuilder: (context, index) => kHeight10,
          itemBuilder: (context, index) {
            return AnimatedContainer(
              duration: Duration(milliseconds: 300 + (index * 100)),
              curve: Curves.easeInOut,
              transform: Matrix4.translationValues(
                  startAnimation ? 0 : screenWidth, 0, 0),
              child: InvoiceListItem(
                date: "2023-06-14",
                name: "Customer $index",
                invoiceId: "INV001",
                boxNum: "128",
                isPaid: true,
              ),
            );
          },
          itemCount: 10,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return InvoiceViewScreen();
            },
          ));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
