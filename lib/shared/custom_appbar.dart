import 'package:evolution_x/core/utils/constants/app_import.dart';
import 'package:flutter/services.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, this.title, this.isArrowBack, this.isMenu});
  final Widget? title;
  final bool? isArrowBack;
  final bool? isMenu;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: AppBar(
        surfaceTintColor: ColorName.black,
        title: title,
        titleTextStyle: TextStyles.stylePoppins18,
        centerTitle: true,
        leadingWidth: 80,
        leading: isArrowBack ?? false
            ? IconButton(
                onPressed: () => Get.back(),
                icon: Row(
                  children: [
                    Assets.icons.arrowBack.svg(),
                    const SizedBox(width: 8),
                    const Text(
                      'Back',
                      style: TextStyles.styleLemonada14,
                    ),
                  ],
                ),
              )
            : const SizedBox.shrink(),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
