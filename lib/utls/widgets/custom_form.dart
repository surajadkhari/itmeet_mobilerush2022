
import 'package:flutter/material.dart';

class MyFormField extends StatefulWidget {
  const MyFormField({
    Key? key,
    this.icon,
    required this.hintText,
    this.validator,
    required this.controller,
    this.isObscure = false,
    this.keyboardType = TextInputType.emailAddress,
    this.textCapitalization = TextCapitalization.words,
    this.textInputAction = TextInputAction.next,
    this.suffix,
    this.maxLength,
    this.enabled = true,
    this.isprefixText = false,
    this.prefixIcon,
  }) : super(key: key);

  final IconData? icon;
  final String hintText;
  final String? Function(String?)? validator;
  final TextEditingController controller;
  final bool isObscure;
  final TextInputType keyboardType;
  final TextCapitalization textCapitalization;
  final TextInputAction textInputAction;
  final Widget? suffix;
  final int? maxLength;
  final bool enabled;

  final bool isprefixText;
  final Widget? prefixIcon;
  @override
  State<MyFormField> createState() => _ClassNameState();
}

class _ClassNameState extends State<MyFormField> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final iconWidget = Icon(
      widget.icon,
      size: height * 0.02,
    );

    double borderR = 12;
    return TextFormField(
      enabled: widget.enabled,
      controller: widget.controller,
      maxLength: widget.maxLength,
      textInputAction: widget.textInputAction,
      textCapitalization: widget.textCapitalization,
      keyboardType: widget.keyboardType,
      obscuringCharacter: '*',
      obscureText: widget.isObscure,
      validator: widget.validator,
      style: TextStyle(fontSize: height * 0.018),
      decoration: InputDecoration(
        counterText: '',
        suffixIcon: widget.suffix,
        errorStyle: TextStyle(fontSize: height * 0.013),
        filled: true,
        fillColor: const Color(0xffEFEFEF),
        isDense: true,
        hintText: widget.hintText,
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderR),
          borderSide: BorderSide(
            color: Colors.grey[200]!,
            width: 0.00000001,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderR),
          borderSide: BorderSide(
            color: Colors.grey[200]!,
            width: 0.00000001,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderR),
          borderSide: BorderSide(
            color: Colors.red[700]!,
            width: 1,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderR),
          borderSide: BorderSide(
            color: Colors.red[700]!,
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderR),
          borderSide: BorderSide(
            color: Colors.grey[200]!,
            width: 0.1,
          ),
        ),

        // prefixIcon: widget.isprefixText ? widget.prefixIcon : iconWidget,
      ),
    );
  }
}
