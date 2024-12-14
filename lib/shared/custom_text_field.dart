import 'package:evolution_x/core/utils/constants/app_import.dart';

class CustomTextField extends StatelessWidget {
  final bool? enabled;
  final String hintText;
  final String? labelText;
  final bool? obscureText;
  final SvgGenImage? prefixIcon;
  final SvgGenImage? suffixIcon;
  final List<String>? autofillHints;
  final TextInputType? textInputType;
  final TextEditingController controller;
  final Function()? suffixFunction;
  final Function(String value)? onChanged;
  final Function(String value)? validator;
  final bool? showBorder;
  final int? maxLines;

  const CustomTextField({
    super.key,
    this.enabled,
    this.hintText = '',
    this.obscureText,
    this.prefixIcon,
    this.suffixIcon,
    this.suffixFunction,
    this.onChanged,
    this.autofillHints,
    this.textInputType,
    required this.controller,
    this.validator,
    this.showBorder,
    this.maxLines,
    this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        labelText != null
            ? Padding(
                padding: const EdgeInsets.only(bottom: 10, left: 10),
                child: Text(
                  labelText!,
                  style: TextStyles.stylePoppins16,
                ),
              )
            : const SizedBox.shrink(),
        SizedBox(
          height: 60,
          child: TextFormField(
            autofocus: true,
            maxLines: maxLines ?? 1,
            enabled: enabled,
            obscureText: obscureText ?? false,
            keyboardType: textInputType,
            style: TextStyles.stylePoppins14,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: controller,
            autofillHints: autofillHints,
            cursorColor: ColorName.osloGray,
            cursorOpacityAnimates: true,
            textInputAction: TextInputAction.next,
            cursorWidth: BorderSide.strokeAlignOutside,
            mouseCursor: MaterialStateMouseCursor.textable,
            cursorRadius: const Radius.circular(12),
            validator: validator != null ? (value) => validator!(value!) : null,
            decoration: _inputDecoration(),
            onChanged: onChanged != null ? (value) => onChanged!(value) : null,
            textAlignVertical: TextAlignVertical.center,
          ),
        ),
      ],
    );
  }

  //* Defines the InputDecoration for the TextFormField.
  InputDecoration _inputDecoration() => InputDecoration(
        alignLabelWithHint: true,
        hintText: hintText,
        fillColor: ColorName.gallery,
        // contentPadding: const EdgeInsets.all(12),
        hintFadeDuration: const Duration(milliseconds: 400),
        hintStyle: TextStyles.stylePoppins14.copyWith(
          color: ColorName.osloGray,
        ),
        prefixIcon: prefixIcon?.svg(fit: BoxFit.scaleDown),
        filled: true,
        suffixIcon: suffixIcon != null
            ? IconButton(
                onPressed: suffixFunction,
                icon: suffixIcon!.svg(
                  fit: BoxFit.scaleDown,
                  height: 18,
                  width: 18,
                ),
              )
            : null,
        border: _outlineInputBorder(),
        focusedBorder: _outlineInputBorder(),
        enabledBorder: _outlineInputBorder(),
        disabledBorder: _outlineInputBorder(),
        errorBorder: _outlineInputBorder(),
      );

  //* This method creates a rounded border with optional customization based on
  OutlineInputBorder _outlineInputBorder() => OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: showBorder ?? true
            ? const BorderSide(color: ColorName.gallery)
            : BorderSide.none,
      );
}
