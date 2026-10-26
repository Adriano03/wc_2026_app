import 'package:material_ui/material_ui.dart';
import 'package:provider/provider.dart';
import 'package:wc_2026_app/ui/sticker/detail/detail_screen.dart';
import 'package:wc_2026_app/ui/sticker/detail/detail_viewmodel.dart';

class const DetailBindings({super.key, required final DetailArgs stickers, required final WidgetBuilder screenBuilder})
    extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) =>
              DetailViewModel(albumRepository: context.read(), code: stickers.code, count: stickers.count),
        ),
      ],
      builder: (context, _) => screenBuilder(context),
    );
  }
}
