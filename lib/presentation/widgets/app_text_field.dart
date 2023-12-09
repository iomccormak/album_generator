import 'package:album_generator/utils/app_text_styles.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextField extends StatefulWidget {
  final double? width;
  final double? height;
  final String? title;
  final bool obscure;
  final TextEditingController? controller;
  final String? hintText;
  final TextInputAction? textInputAction;
  const AppTextField({
    super.key,
    this.width,
    this.height,
    this.title,
    this.obscure = false,
    this.controller,
    this.hintText,
    this.textInputAction,
  });

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.title != null) ...[
            Text(
              widget.title!,
              style: AppTextStyles.underTitle.copyWith(
                fontWeight: FontWeight.w400,
              ),
            ),
            5.h.heightBox,
          ],
          SizedBox(
            width: widget.width ?? 345.w,
            child: TextFormField(
              controller: widget.controller,
              textInputAction: widget.textInputAction ?? TextInputAction.done,
              maxLines: widget.obscure ? 1 : null,
              style: AppTextStyles.underTitle.copyWith(fontSize: 15.sp),
              obscureText: widget.obscure ? _obscureText : false,
              decoration: InputDecoration(
                suffixIcon: widget.obscure
                    ? IconButton(
                        icon: Icon(
                          _obscureText
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                        onPressed: () => setState(
                          () => _obscureText = !_obscureText,
                        ),
                      )
                    : null,
                hintText: widget.hintText,
                hintStyle: AppTextStyles.underTitle.copyWith(fontSize: 15.sp),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1.r,
                    color: Colors.grey,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 2.r,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
