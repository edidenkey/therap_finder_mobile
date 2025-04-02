import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import 'package:theraplib_mobile/widgets/index.dart';

class SearchInputField extends StatefulWidget {
  const SearchInputField({
    Key? key,
    required this.controller,
    this.suffixIcon,
    this.suffixIconColor,
    required this.hintText,
    required this.onChanged,
    required this.onPrefixIconPressed,
    this.onSuffixIconPressed,
  }) : super(key: key);

  final TextEditingController controller;
  final IconData? suffixIcon;
  final Color? suffixIconColor;
  final String hintText;
  final void Function(String) onChanged;
  final void Function() onPrefixIconPressed;
  final void Function()? onSuffixIconPressed;

  @override
  State<SearchInputField> createState() => _SearchInputFieldState();
}

class _SearchInputFieldState extends State<SearchInputField> {
  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() => _isFocused = _focusNode.hasFocus);
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      controller: widget.controller,
      focusNode: _focusNode,
      prefixIcon: _isFocused ? Ionicons.arrow_back : Ionicons.search,
      suffixIcon: widget.suffixIcon,
      suffixIconColor: widget.suffixIconColor,
      hintText: widget.hintText,
      onChanged: widget.onChanged,
      onPrefixIconPressed: _isFocused ? widget.onPrefixIconPressed : null,
      onSuffixIconPressed: widget.onSuffixIconPressed,
      inputType: TextInputType.text,
    );
  }
}
