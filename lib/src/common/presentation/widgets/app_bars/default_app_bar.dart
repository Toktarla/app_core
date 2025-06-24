
import 'package:app_core/src/common/presentation/widgets/app_bars/custom_app_bar.dart';

class DefaultAppBar extends CustomAppBar {
  const DefaultAppBar({
    required String title,
    super.key,
  }) : super(
          title: title,
          leading: null,
        );
}
