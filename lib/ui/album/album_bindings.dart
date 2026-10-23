import 'package:material_ui/material_ui.dart';
import 'package:provider/provider.dart';
import 'package:wc_2026_app/core/view_model_initializable.dart';
import 'package:wc_2026_app/ui/album/album_viewmodel.dart';

class const AlbumBindings({super.key, required final WidgetBuilder screenBuilder}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) =>
              AlbumViewModel(albumRepository: context.read(), teamRepository: context.read()).initialized(),
        ),
      ],
      builder: (context, child) => screenBuilder(context),
    );
  }
}
