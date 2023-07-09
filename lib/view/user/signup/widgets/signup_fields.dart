import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpFields extends StatefulWidget {
  String hint;

  bool? isSuffix;
  Color? color;
  TextEditingController controller = TextEditingController();
  SignUpFields(
      {super.key,
      required this.hint,
      this.color = Colors.white,
      required this.controller,
      this.isSuffix = false});

  @override
  State<SignUpFields> createState() => _SignUpFieldsState();
}

class _SignUpFieldsState extends State<SignUpFields> {
  bool _passwordVisible = true;
  @override
  void initState() {
    // TODO: implement initState

    _passwordVisible = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'this field is required';
        }
        return null;
      },
      obscureText: (widget.isSuffix!) ? !_passwordVisible : false,
      controller: widget.controller,
      decoration: InputDecoration(
          helperText: '',
          fillColor: widget.color,
          filled: true,
          suffixIcon: (widget.isSuffix!)
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      _passwordVisible = !_passwordVisible;
                    });
                  },
                  icon: (_passwordVisible)
                      ? const Icon(Icons.visibility)
                      : const Icon(Icons.visibility_off))
              : const SizedBox(),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: const BorderSide(
                color: Color.fromARGB(255, 228, 228, 228),
              )),
          border: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color.fromARGB(255, 228, 228, 228),
              ),
              borderRadius: BorderRadius.circular(25)),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color.fromARGB(255, 228, 228, 228),
              ),
              borderRadius: BorderRadius.circular(25)),
          hintText: widget.hint,
          contentPadding: EdgeInsets.only(
              left: ScreenUtil().setSp(25.0), top: ScreenUtil().setSp(15.0))),
    );
  }
}
