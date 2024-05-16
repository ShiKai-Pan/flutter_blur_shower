import 'package:flutter/material.dart';

class BuildAtPostFrame extends StatefulWidget {
  const BuildAtPostFrame({
    super.key,
    required this.show,
  });

  final VoidCallback? show;

  @override
  State<BuildAtPostFrame> createState() => _BuildAtPostFrameState();
}

class _BuildAtPostFrameState extends State<BuildAtPostFrame> {
  @override
  void initState() {
    super.initState();
    // It takes time to process the Gaussian blur background, so display the child after a delay
    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.show?.call();
    });
  }

  @override
  Widget build(BuildContext context) {
    return const SizedBox.expand();
  }
}
