import 'package:flutter/material.dart';
import '../utils/utils.dart';
class InputBox extends StatefulWidget {
  const InputBox({
    super.key,
    this.height = 47,
    this.width = 330,
    this.placeHolder = 'Email',
    this.borderRadius = 12,
    this.marginVertical = 6,
    this.isPassword = false,
    this.prefixIcon = const Icon(Icons.email),
  });
  final double height;
  final double width;
  final String placeHolder;
  final double borderRadius;
  final double marginVertical;
  final bool isPassword;
  final Icon prefixIcon;

  @override
  State<InputBox> createState() => _InputBoxState();
}

class _InputBoxState extends State<InputBox> {
  var passwordVisibility = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: widget.marginVertical),
      child: SizedBox(
        height: widget.height,
        width: widget.width,
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Primary.grey,
            contentPadding: const EdgeInsets.symmetric(vertical: 10),
            prefixIcon: widget.prefixIcon,
            hintStyle: const TextStyle(fontSize: 16),
            suffixIcon: widget.isPassword
                ? IconButton(
                    icon: Icon(passwordVisibility
                        ? Icons.visibility
                        : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        passwordVisibility = !passwordVisibility;
                      });
                    },
                  )
                : null,
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 0,
                color:Primary.white,
              ),
              borderRadius: BorderRadius.circular(widget.borderRadius),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 1,
                color: Primary.black,
              ),
              borderRadius: BorderRadius.circular(widget.borderRadius),
            ),
            hintText: widget.placeHolder,
          ),
          obscureText: passwordVisibility,
        ),
      ),
    );
  }
}
