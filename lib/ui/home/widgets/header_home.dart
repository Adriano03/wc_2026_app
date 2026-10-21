import 'package:material_ui/material_ui.dart';
import 'package:wc_2026_app/ui/core/share/initials_avatar.dart';
import 'package:wc_2026_app/ui/core/theme/app_colors.dart';
import 'package:wc_2026_app/ui/core/theme/app_dimens.dart';
import 'package:wc_2026_app/ui/core/theme/app_text_styles.dart';

class HeaderHome extends StatelessWidget implements PreferredSizeWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 68,
      automaticallyImplyLeading: false,
      centerTitle: false,
      titleSpacing: AppDimens.gridMargin,
      title: Row(
        children: [
          InitialsAvatar(initials: 'RR', size: 44, style: AppTextStyles.button, ringColor: AppColors.ink),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: .start,
              mainAxisSize: .min,
              spacing: 5,
              children: [
                Text('OLÁ COLECIONADOR', style: AppTextStyles.overline.copyWith(color: AppColors.grayText)),
                Text('Adriano Reis', maxLines: 1, overflow: .ellipsis, style: AppTextStyles.title),
              ],
            ),
          ),
        ],
      ),
      actions: [
        _NotificationBell(),
        SizedBox(width: AppDimens.gridMargin),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(68);
}

class const _NotificationBell() extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Badge(
      backgroundColor: AppColors.red,
      smallSize: 10,
      alignment: Alignment(0.59, -0.47),
      child: CircleAvatar(
        radius: 22,
        backgroundColor: AppColors.border,
        child: CircleAvatar(
          radius: 21,
          backgroundColor: AppColors.white,
          child: Icon(Icons.notifications_none_rounded, color: AppColors.ink, size: 18),
        ),
      ),
    );
  }
}
