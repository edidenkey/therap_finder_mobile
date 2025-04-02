import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:theraplib_mobile/constants/index.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    Key? key,
    this.controller,
    this.validator,
    this.onChanged,
    this.onFieldSubmitted,
    this.onSaved,
    this.onEditingComplete,
    this.onTap,
    this.onPrefixIconPressed,
    this.onSuffixIconPressed,
    this.enabled = true,
    this.autofocus = false,
    this.focusNode,
    this.maxLength,
    this.maxLines = 1,
    this.minLines,
    this.color,
    this.prefixText,
    this.prefixIcon,
    this.pprefixIconColor,
    this.suffixIcon,
    this.suffixIconColor,
    this.labelText,
    this.hintText,
    this.formaters,
    this.autovalidateMode,
    this.inputType,
    this.obscureText = false,
    this.obscuringCharacter = '•',
    this.enableSuggestions = true,
    this.enableInteractiveSelection,
    this.autocorrect = true,
    this.inputAction = TextInputAction.done,
    this.textCapitalization = TextCapitalization.none,
  }) : super(key: key);

  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  final void Function(String?)? onSaved;
  final void Function()? onEditingComplete;
  final void Function()? onTap;
  final void Function()? onPrefixIconPressed;
  final void Function()? onSuffixIconPressed;
  final bool enabled;
  final bool autofocus;
  final FocusNode? focusNode;
  final int? maxLength;
  final int maxLines;
  final int? minLines;
  final Color? color;
  final String? prefixText;
  final IconData? prefixIcon;
  final Color? pprefixIconColor;
  final IconData? suffixIcon;
  final Color? suffixIconColor;
  final String? labelText;
  final String? hintText;
  final List<TextInputFormatter>? formaters;
  final AutovalidateMode? autovalidateMode;
  final TextInputType? inputType;
  final bool obscureText;
  final String obscuringCharacter;
  final bool enableSuggestions;
  final bool? enableInteractiveSelection;
  final bool autocorrect;
  final TextInputAction inputAction;
  final TextCapitalization textCapitalization;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        colorScheme: Theme.of(context).colorScheme.copyWith(
              primary: AppThemes.lightPalette.shade400,
            ),
      ),
      child: TextFormField(
        controller: controller,
        validator: validator,
        onChanged: onChanged,
        onSaved: onSaved,
        onTap: onTap,
        onFieldSubmitted: onFieldSubmitted,
        onEditingComplete: onEditingComplete,
        autofocus: autofocus,
        focusNode: focusNode,
        cursorWidth: 1.5,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: enabled ? Colors.black87 : Theme.of(context).disabledColor,
        ),
        enabled: enabled,
        maxLength: maxLength,
        maxLines: maxLines,
        minLines: minLines,
        autovalidateMode: autovalidateMode,
        keyboardType: inputType,
        obscureText: obscureText,
        obscuringCharacter: obscuringCharacter,
        enableSuggestions: enableSuggestions,
        enableInteractiveSelection: enableInteractiveSelection,
        autocorrect: autocorrect,
        textInputAction: inputAction,
        textCapitalization: textCapitalization,
        inputFormatters: formaters,
        decoration: InputDecoration(
          prefixIcon: prefixIcon != null
              ? InkResponse(
                  onTap: onPrefixIconPressed,
                  child: Icon(prefixIcon, color: pprefixIconColor),
                )
              : null,
          suffixIcon: suffixIcon != null
              ? InkResponse(
                  onTap: onSuffixIconPressed,
                  child: Icon(suffixIcon, color: suffixIconColor),
                )
              : null,
          prefixText: prefixText,
          labelText: labelText,
          hintText: hintText,
          errorMaxLines: 2,
          contentPadding: EdgeInsets.symmetric(
            horizontal: prefixIcon != null || suffixIcon != null ? 8 : 16,
            vertical: 13,
          ),
        ),
      ),
    );
  }
}
