import 'package:flutter/material.dart';

class LoadingIndecatorWidget extends StatelessWidget {
  const LoadingIndecatorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
