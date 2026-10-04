import 'package:flutter_svg/svg.dart';
import 'package:material_ui/material_ui.dart';
import 'package:wc_2026_app/ui/core/share/app_assets.dart';
import 'package:wc_2026_app/ui/core/theme/app_colors.dart';

class HeaderLogin extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 320,
      child: Stack(
        fit: .expand,
        children: [
          SvgPicture.asset(AppAssets.patterns.paniniArcHeaderLoginSvg, fit: .cover, alignment: .topCenter),
          Align(
            alignment: .bottomCenter,
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: .topCenter,
                  end: .bottomCenter,
                  colors: [AppColors.cream.withValues(alpha: 0), AppColors.cream],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
