import 'package:evolution_x/core/utils/constants/app_import.dart';
import 'package:evolution_x/shared/custom_button.dart';
import 'package:evolution_x/shared/custom_text_field.dart';

class LoginViewScreen extends StatelessWidget {
  const LoginViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(isArrowBack: true),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                children: [
                  Assets.images.logoPng_
                      .image(fit: BoxFit.fill, height: 200, width: 250),
                  Text(
                    'WELCOME TO BACK!',
                    style: TextStyle(
                      fontSize: 20,
                      color: ColorName.astral.withOpacity(.6),
                      fontWeight: FontWeight.w700,
                      fontFamily: FontFamily.poppins,
                      letterSpacing: 3,
                      wordSpacing: 5,
                    ),
                  ),
                  const SizedBox(height: 60),
                  CustomTextField(
                    controller: TextEditingController(),
                    labelText: 'E-mail',
                    hintText: 'Enter your E-mail',
                    prefixIcon: Assets.icons.user,
                  ),
                  const SizedBox(height: 25),
                  CustomTextField(
                    controller: TextEditingController(),
                    labelText: 'Password',
                    hintText: 'Your password',
                    prefixIcon: Assets.icons.password,
                    suffixIcon: Assets.icons.eye,
                  ),
                  const SizedBox(height: 6),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'forget password ?',
                      style: TextStyle(
                        fontSize: 12,
                        color: ColorName.curiousBlue,
                        fontWeight: FontWeight.w600,
                        fontFamily: FontFamily.poppins,
                      ),
                    ),
                  ),
                  const Spacer(),
                  CustomButton(
                    title: 'Login',
                    onTap: () {},
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
