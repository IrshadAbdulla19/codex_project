import 'package:flutter/material.dart';
import 'package:irshad_codex/core/constants.dart';
import 'package:irshad_codex/presentation/widgets/app_bar_widget.dart';

import 'widgets/product_create_screen.dart';
import 'widgets/product_list_item.dart';

class ProuductListScreen extends StatefulWidget {
  const ProuductListScreen({super.key});

  @override
  State<ProuductListScreen> createState() => _ProuductListScreenState();
}

class _ProuductListScreenState extends State<ProuductListScreen> {
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
      appBar: appBarWidget(context, "Products", [
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
              child: const ProductListItem(
                salesPrice: "200",
                name: "urname",
                purchasePrice: "190",
                boxNum: "128",
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
              return ProductCreateScreen();
            },
          ));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
