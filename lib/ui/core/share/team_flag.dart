import 'package:material_ui/material_ui.dart';
import 'package:wc_2026_app/config/environment.dart';

class const TeamFlag({
  super.key,
  required final double size,
  final String? code,
  final String? path,
  final bool circle = true,
}) extends StatelessWidget {
  const TeamFlag.url(String path, {required double size, bool circle = true, Key? key})
    : this(path: path, size: size, circle: circle, key: key);

  @override
  Widget build(BuildContext context) {
    if (path == null && code == null) {
      return const SizedBox.shrink();
    }

    final image = Image.network(
      path != null ? Environment.url(path!) : Environment.flagUrl(code!),
      fit: .cover,
      errorBuilder: (_, _, _) => const SizedBox.shrink(),
      loadingBuilder: (_, child, progress) => progress == null ? child : const SizedBox.shrink(),
    );

    return SizedBox(
      width: circle ? size : size * 3 / 2,
      height: size,
      child: circle ? ClipOval(child: image) : ClipRRect(borderRadius: .circular(2), child: image),
    );
  }
}
