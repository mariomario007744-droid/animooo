import 'package:animooo/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(Theme.of(context).brightness==Brightness.dark?
    AssetsData.logoLight
    :AssetsData.logoDark
    );
  }
}