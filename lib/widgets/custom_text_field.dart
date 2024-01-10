import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomTextFiled extends StatefulWidget
{
  //CustomTextFiled({Key? key}) : super(key: key);

  TextEditingController? textEditingController;
  IconData? iconData;
  String?hinttext;
  bool? isObsecre=true;
  bool?enabled=true;

  CustomTextFiled({super.key,
   this.textEditingController,
   this.iconData,
   this.hinttext,
   this.isObsecre,
   this.enabled,
});

  @override

  State<CustomTextFiled> createState() => _CustomTextFiledState();
}

class _CustomTextFiledState extends State<CustomTextFiled> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.all(8.0),
      child: TextFormField(
        enabled: widget.enabled,
        controller: widget.textEditingController,
        obscureText: widget.isObsecre!,
        cursorColor: Theme.of(context).primaryColor,
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            widget.iconData,
            color: Colors.purpleAccent,

          ),
          focusColor:Theme.of(context).primaryColor,
          hintText: widget.hinttext,
        ),
      ),

    );
  }
}
