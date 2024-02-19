import 'package:flutter/material.dart';
import 'package:irshad_codex/core/constants.dart';
import 'package:irshad_codex/presentation/widgets/commen_text_widgets.dart';

class TableItemWidget extends StatefulWidget {
  final String headName;
  final IconData icon;
  const TableItemWidget(
      {super.key, required this.headName, required this.icon});

  @override
  State<TableItemWidget> createState() => _TableItemWidgetState();
}

class _TableItemWidgetState extends State<TableItemWidget>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat(reverse: true);
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return ShaderMask(
            shaderCallback: (Rect bounds) {
              return RadialGradient(
                center: Alignment.topLeft,
                radius: _animation.value * 5,
                colors: [kWhite, kWhite.withOpacity(0.6)],
                stops: const [0.0, 0.5],
              ).createShader(bounds);
            },
            child: Card(
              margin: const EdgeInsets.symmetric(horizontal: 1, vertical: 1),
              elevation: 8,
              color: kWhite,
              shadowColor: primaryBlack,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  smallHeadText(
                    widget.headName,
                  ),
                  kHeight5,
                  Icon(widget.icon)
                ],
              ),
            ),
          );
        });
  }
}
