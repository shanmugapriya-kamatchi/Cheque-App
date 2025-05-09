import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final String? text;
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final Widget? icon;
  final bool isDateField;
  final FontWeight textweight;
  final double textsize;
  final void Function(String)? onChanged;

  const CustomTextfield({
    super.key,
    this.text,
    required this.hintText,
    this.obscureText = false,
    required this.controller,
    required this.keyboardType,
    required this.validator,
    this.icon,
    this.isDateField = false,
    this.textweight = FontWeight.w500,
    this.textsize = 16,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Visibility(
            visible: text != null,
            child: Column(
              children: [
                Text(
                  text ?? "",
                  style: TextStyle(
                      fontSize: textsize, fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
          TextFormField(
            cursorHeight: 30,
            controller: controller,
            keyboardType: keyboardType,
            obscureText: obscureText,
            validator: validator,
            cursorColor: Colors.black,
            onChanged: onChanged,
            style: Theme.of(context).textTheme.bodyMedium,
            onTap: isDateField
                ? () async {
                    DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1950),
                      lastDate: DateTime(2050),
                      builder: (BuildContext context, Widget? child) {
                        return Theme(
                          data: ThemeData.light().copyWith(
                            primaryColor: Theme.of(context)
                                .primaryColor, // Header background color
                            colorScheme: ColorScheme.light(
                              primary: Theme.of(context)
                                  .primaryColor, // Selection color
                              onSurface: Colors.black, // Text color
                            ),
                            dialogTheme: DialogThemeData(
                                backgroundColor: Colors
                                    .white), // Background color of the picker
                          ),
                          child: child!,
                        );
                      },
                    );
                    if (pickedDate != null) {
                      controller.text =
                          "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
                    }
                  }
                : null,
            decoration: InputDecoration(
              errorStyle: const TextStyle(height: 0),
              focusColor: Colors.black,
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)),
              suffixIcon: icon,
              contentPadding: const EdgeInsets.all(17),
              isDense: true,
              isCollapsed: true,
              hintText: hintText,
              hintStyle: TextStyle(
                  color: const Color.fromARGB(166, 123, 122, 122),
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6.0),
                  borderSide: BorderSide(width: 3, style: BorderStyle.solid)),
              filled: true,
              fillColor: Colors.white, // Background color of the picker
            ),
          ),
        ],
      ),
    );
  }
}
