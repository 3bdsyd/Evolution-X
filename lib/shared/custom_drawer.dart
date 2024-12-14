// import 'package:your_reservation/core/utils/constants/app_import.dart';
// import 'package:your_reservation/shared/custom_profile_image.dart';
// import 'package:your_reservation/src/account/controller/account_controller.dart';

// class CustomDrawer extends GetView<AccountControllerImpl> {
//   const CustomDrawer({super.key});

//   @override
//   Widget build(BuildContext context) {
//     Get.put(AccountControllerImpl());

//     return LayoutBuilder(builder: (context, size) {
//       final _box = Get.find<MyServices>().getBox;
//       print(_box.read(AppKey.verify) == 'true');
//       return SizedBox(
//         width: 303,
//         child: Stack(
//           children: [
//             Drawer(
//               surfaceTintColor: ColorName.white,
//               width: 280,
//               backgroundColor: ColorName.white,
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 8),
//                 child: ListView(
//                   padding: EdgeInsets.zero,
//                   children: [
//                     const SizedBox(height: 66),
//                     buildProfileSection(),
//                     const SizedBox(height: 40),
//                     buildMenuItems(),
//                     const SizedBox(height: 15),
//                     buildLanguageToggle(),
//                     SizedBox(
//                       height: _box.read(AppKey.verify) != null &&
//                               _box.read(AppKey.verify) == 'true'
//                           ? size.maxHeight - 790 > 0
//                               ? size.maxHeight - 790
//                               : 10
//                           : size.maxHeight - 530 > 0
//                               ? size.maxHeight - 530
//                               : 10,
//                     ),
//                     buildLogoutItem(),
//                   ],
//                 ),
//               ),
//             ),
//             buildBackButton(),
//           ],
//         ),
//       );
//     });
//   }

//   /// Builds the profile section of the drawer.
//   Widget buildProfileSection() {
//     final _box = Get.find<MyServices>().getBox;

//     return Column(
//       children: <Widget>[
//         const CustomProfileImage(),
//         const SizedBox(height: 12),
//         _box.read(AppKey.verify) != null && _box.read(AppKey.verify) == 'true'
//             ? Text(
//                 _box.read(AppKey.name),
//                 textAlign: TextAlign.center,
//                 style: TextStyles.style22,
//               )
//             : const SizedBox(height: 0, width: 0),
//       ],
//     );
//   }

//   /// Builds the menu items of the drawer.
//   Widget buildMenuItems() {
//     final _box = Get.find<MyServices>().getBox;

//     return Container(
//       decoration: BoxDecoration(
//         border: Border.all(color: ColorName.submarine.withOpacity(.4)),
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: Column(
//         children: [
//           if (_box.read(AppKey.verify) != null &&
//               _box.read(AppKey.verify) == 'true') ...[
//             buildMenuItem(
//               Assets.icons.personFour,
//               () {
//                 Get.toNamed(RouteNames.account);
//               },
//               'myAccount'.tr,
//               true,
//               false,
//             ),
//             buildMenuItem(
//               Assets.icons.reservations,
//               () {
//                 Get.toNamed(RouteNames.reservationsPast);
//               },
//               'myPastReservations'.tr,
//             ),
//             buildMenuItem(
//               Assets.icons.appointmentsNext,
//               () {
//                 Get.toNamed(RouteNames.reservationsFuture);
//               },
//               'myFutureReservations'.tr,
//             ),
//             buildMenuItem(Assets.icons.favoriteTow, () {
//               Get.toNamed(RouteNames.favorites);
//             }, 'favorite'.tr),
//           ],
//           buildMenuItem(Assets.icons.connectUs, () {
//             Get.toNamed(RouteNames.connectUs);
//           }, 'connectWithUs'.tr, _box.read(AppKey.verify) != 'true'),
//           buildMenuItem(Assets.icons.termsUse, () {
//             Get.toNamed(RouteNames.termsAndConditions);
//           }, 'privacyPolicy'.tr),
//           buildMenuItem(Assets.icons.privacyPolicy, () {
//             Get.toNamed(RouteNames.privacyPolicy);
//           }, 'termsAndConditions'.tr, false, true),
//         ],
//       ),
//     );
//   }

//   /// Builds a single menu item.
//   Widget buildMenuItem(
//     dynamic icon,
//     Function() onTap,
//     String title, [
//     bool? isTopRadius,
//     bool? isBottomRadius,
//   ]) {
//     return ListTile(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(
//                 isTopRadius != null && isTopRadius == true ? 11 : 0),
//             topRight: Radius.circular(
//                 isTopRadius != null && isTopRadius == true ? 11 : 0),
//             bottomLeft: Radius.circular(
//                 isBottomRadius != null && isBottomRadius == true ? 11 : 0),
//             bottomRight: Radius.circular(
//                 isBottomRadius != null && isBottomRadius == true ? 11 : 0),
//           ),
//         ),
//         contentPadding: const EdgeInsets.symmetric(horizontal: 8),
//         leading: buildMenuItemIcon(icon),
//         title: Text(title, style: TextStyles.style15),
//         trailing: const Icon(Icons.arrow_forward_ios, size: 12),
//         onTap: onTap);
//   }

//   /// Builds the icon for a menu item.
//   Widget buildMenuItemIcon(dynamic icon) {
//     return Container(
//       height: 28,
//       width: 28,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(6),
//         color: ColorName.atlantis,
//       ),
//       child: icon is SvgGenImage
//           ? icon.svg(fit: BoxFit.scaleDown)
//           : icon.image(fit: BoxFit.scaleDown),
//     );
//   }

//   /// Builds the language toggle item.
//   Widget buildLanguageToggle() {
//     return Container(
//       decoration: BoxDecoration(
//         border: Border.all(color: ColorName.submarine.withOpacity(.4)),
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: ListTile(
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)),
//         contentPadding: const EdgeInsets.symmetric(horizontal: 8),
//         leading: languageService.currentLanguageCode() == 'ar'
//             ? Assets.images.flagUsa.image(height: 28, width: 28)
//             : Assets.images.flagSaudi.image(height: 28, width: 28),
//         title: Text(
//             languageService.currentLanguageCode() == 'en'
//                 ? 'arabic'.tr
//                 : 'english'.tr,
//             style: TextStyles.style15),
//         onTap: () {
//           languageService.currentLanguageCode() == 'en'
//               ? languageService.changeLocale(const Locale('ar'))
//               : languageService.changeLocale(const Locale('en'));
//         },
//       ),
//     );
//   }

//   /// Builds the logout item.
//   Widget buildLogoutItem() {
//     final _box = Get.find<MyServices>().getBox;

//     return ListTile(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       contentPadding: const EdgeInsets.symmetric(horizontal: 8),
//       leading: Container(
//         height: 28,
//         width: 28,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(6),
//           color: ColorName.cinnabar,
//         ),
//         child:
//             const Icon(Icons.logout_rounded, size: 18, color: ColorName.white),
//       ),
//       title: Text(_box.read(AppKey.verify) == 'true' ? 'logout'.tr : 'login'.tr,
//           style: TextStyles.style15),
//       onTap: () {
//         _box.read(AppKey.verify) == 'true'
//             ? controller.logoutUser()
//             : Get.toNamed(RouteNames.login);
//       },
//     );
//   }

//   /// Builds the back button for the drawer.
//   Widget buildBackButton() {
//     return Positioned(
//       top: 75,
//       left: languageService.currentLanguageCode() == 'ar' ? 0 : null,
//       right: languageService.currentLanguageCode() == 'en' ? 0 : null,
//       child: Container(
//         width: 60,
//         height: 60,
//         alignment: languageService.currentLanguageCode() == 'ar'
//             ? Alignment.centerLeft
//             : Alignment.centerRight,
//         decoration: const BoxDecoration(
//           shape: BoxShape.circle,
//           color: ColorName.white,
//         ),
//         child: const Icon(
//           Icons.arrow_back_ios,
//           color: ColorName.capeCod,
//           size: 20,
//         ),
//       ),
//     );
//   }
// }
