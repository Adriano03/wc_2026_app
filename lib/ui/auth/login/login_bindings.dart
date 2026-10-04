import 'package:material_ui/material_ui.dart';
import 'package:provider/provider.dart';
import 'package:wc_2026_app/domain/use_cases/auth/auth_login_use_case.dart';
import 'package:wc_2026_app/ui/auth/login/login_viewmodel.dart';

class const LoginBindings({super.key, required final WidgetBuilder screenBuilder}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (context) => AuthLoginUseCase(authRepository: context.read(), authSessionRepository: context.read()),
        ),
        ChangeNotifierProvider(
          create: (context) => LoginViewModel(loginUseCase: context.read(), sessionNotifier: context.read()),
        ),
      ],
      builder: (context, _) => screenBuilder(context),
    );
  }
}
