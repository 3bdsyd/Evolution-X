import 'package:evolution_x/core/utils/constants/app_import.dart';

Future<void> main() async {
  await initialServices();

  // services are initialized
  runApp(const EvolutionX());
}

class EvolutionX extends StatelessWidget {
  const EvolutionX({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: FontFamily.poppins,
        scaffoldBackgroundColor: ColorName.whisper,
        appBarTheme: const AppBarTheme(
          backgroundColor: ColorName.whisper,
        ),
      ),
      initialRoute: RouteNames.login,
      getPages: AppRoutes.routes,
    );
  }
}
