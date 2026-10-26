import 'package:material_ui/material_ui.dart';
import 'package:wc_2026_app/ui/core/share/glass_bar.dart';
import 'package:wc_2026_app/ui/core/theme/app_colors.dart';
import 'package:wc_2026_app/ui/core/theme/app_dimens.dart';
import 'package:wc_2026_app/ui/core/theme/app_text_styles.dart';

class const TopBar({super.key, required final int number, required final int total, required final VoidCallback onBack})
    extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(AppDimens.gridMargin, 10, AppDimens.gridMargin, 0),
      child: GlassBar(
        title: _Progress(number: number, total: total),
        onBack: onBack,
      ),
    );
  }
}

class const _Progress({required final int number, required final int total}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 26,
      alignment: .center,
      decoration: ShapeDecoration(shape: StadiumBorder(), color: AppColors.ink.withValues(alpha: .5)),
      child: Text(
        '${number.toString().padLeft(2, '0')} / $total',
        style: AppTextStyles.overline.copyWith(color: AppColors.white),
      ),
    );
  }
}
