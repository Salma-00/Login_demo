import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double .infinity,
  double height = 40,
  Color background = Colors.blue,
  bool isUpperCase = true,
  double radius=10.0,
  required void Function()?  function,
  required String text,

}) =>Container(
  width: width,
  child: MaterialButton(
    onPressed: function,
    child: Text(
      isUpperCase ? text.toUpperCase() : text,
      style: TextStyle(
        color: Colors.white,
      ),
    ),
    height: height,
  ),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(
      radius,
    ),
    color: background,
  ),
);

Widget defaultFormField({
  required TextEditingController controller ,
  required TextInputType type ,
  void Function(String)? onSubmit,
  void Function(String)? onChange,
  void Function()? onTap,
  bool isPassword = false,
  required String? Function(String?)? validate,
  required String label,
  required IconData prefix,
  IconData? suffix,
  void Function()? suffixPressed,
  double radius = 0,
  Color? prefixIconColor ,
  Color? suffixIconColor ,
  Color? fillColor,
  bool? isFilled = false,
  bool isClickable = true,



})=>TextFormField(
  controller: controller,
  keyboardType: type,
  obscureText: isPassword,
  enabled: isClickable,
  onFieldSubmitted: onSubmit,
  onChanged: onChange,
  onTap: onTap,
  validator: validate,
  decoration: InputDecoration(
    labelText: label,
    prefixIcon: Icon(
      prefix,
      color: prefixIconColor,
    ),
    suffixIcon: suffix != null ? IconButton(
      onPressed: suffixPressed ,
      icon: Icon(
        suffix,
        color: suffixIconColor,
      ),
    ):null,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(radius),
    ),
    filled: isFilled,
    fillColor: fillColor,
  ),
);
