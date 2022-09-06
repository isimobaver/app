// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class CommentBox extends StatefulWidget {
  Widget? child;
  dynamic formKey;
  dynamic sendButtonMethod;
  dynamic commentController;
  String? labelText;
  String? hintText;
  String? errorText;
  Widget? sendWidget;
  Color? backgroundColor;
  Color? textColor;
  double? fontSize;
  bool withBorder;
  Widget? header;
  FocusNode? focusNode;
  ImageProvider<Object>? userImage;
  Color? userAvatarColor;
  void Function(Object, StackTrace?)? onBackgroundImageError;
  CommentBox(
      {Key? key, this.child,
      this.header,
      this.sendButtonMethod,
      this.formKey,
      this.commentController,
      this.sendWidget,
      this.userImage,
      this.labelText,
      this.hintText,
      this.fontSize,
      this.focusNode,
      this.errorText,
      this.onBackgroundImageError,
      this.userAvatarColor,
      this.withBorder = true,
      this.backgroundColor,
      this.textColor}) : super(key: key);

  @override
  State<CommentBox> createState() => _CommentBoxState();
}
// ignore: must_be_immutable
class _CommentBoxState extends State<CommentBox> {

     
      bool error = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: widget.child!),
        // Divider(
        //   height: 1,
        // ),
        widget.header ?? const SizedBox.shrink(),
        ListTile(
          contentPadding:
               const EdgeInsets.only(bottom: 0,top: 6, left: 10, right: 10),
          tileColor: widget.backgroundColor,
          leading: SizedBox(
            width: 40,
            child: CircleAvatar(
              backgroundColor: widget.userAvatarColor,
              onBackgroundImageError: widget.onBackgroundImageError,
              radius: 15,
              backgroundImage: widget.userImage,
            ),
          ),dense: true,
          title: SizedBox(
            height: error? 70 : 55,
            child: Form(
              key: widget.formKey,
              child: TextFormField(
                cursorRadius: const Radius.circular(20),
                maxLines: 4,
                minLines: 1,
                focusNode: widget.focusNode,
                cursorColor: widget.textColor,
                style: TextStyle(
                  color: widget.textColor,
                  fontSize: 14,
                ),
                controller: widget.commentController,
                decoration: InputDecoration(
                  enabledBorder: !widget.withBorder
                      ? InputBorder.none
                      : OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              color: widget.textColor!,
                              width: 1,
                              style: BorderStyle.solid),
                        ),
                  focusedBorder: !widget.withBorder
                      ? InputBorder.none
                      : OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              color: widget.textColor!,
                              width: 1,
                              style: BorderStyle.solid),
                        ),
                  border: !widget.withBorder
                      ? InputBorder.none
                      : OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              color: widget.textColor!,
                              width: 1,
                              style: BorderStyle.solid),
                        ),
                  labelText: error? widget.errorText : widget.labelText,
                  hintText: widget.hintText,
                  focusColor: widget.textColor,
                  fillColor: widget.textColor,
                  contentPadding: const EdgeInsets.fromLTRB(12, 2, 12, 2),
                  labelStyle: TextStyle(color: error? Colors.red : widget.textColor),
                  hintStyle: TextStyle(
                    color: widget.textColor,
                    fontSize: widget.fontSize,
                  ),
                ),
                autofocus: true,
                validator: (value) {
                  String? errorText;
                  if(value!.isEmpty){
                   errorText = "";
                   setState(() {
                     error = true;
                   });
                  }
                  return errorText;
                },
              ),
            ),
          ),
          trailing: GestureDetector(
            onTap: widget.sendButtonMethod,
            child: widget.sendWidget,
          ),
        ),
      ],
    );
  }
}
