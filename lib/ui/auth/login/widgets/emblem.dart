import 'package:material_ui/material_ui.dart';
import 'package:wc_2026_app/ui/core/share/app_assets.dart';
import 'package:wc_2026_app/ui/core/theme/app_colors.dart';
import 'package:wc_2026_app/ui/core/theme/app_shadows.dart';

class Emblem extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 88,
      height: 88,
      alignment: .center,
      decoration: ShapeDecoration(shape: CircleBorder(), color: AppColors.white, shadows: AppShadows.md),
      child: SizedBox(width: 54, height: 68, child: Image.asset(AppAssets.images.logoFifaWc26, fit: .contain)),
    );
  }
}
