import 'package:flutter/material.dart';
import 'package:google_docs_clone/gen/colors.gen.dart';

class Button extends StatelessWidget {
  final _ButtonType _type;
  final String? text;
  final Color color;
  final double? elevation;
  final Icon? icon;
  final BorderRadius? borderRadius;
  final BorderSide? borderSide;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onTap;

  const Button.solid({
    this.color = ColorName.primary,
    required this.text,
    this.elevation = 3,
    this.borderRadius,
    this.textStyle,
    this.padding,
    this.onTap,
  })  : _type = _ButtonType.solid,
        icon = null,
        borderSide = null;

  const Button.outlined({
    this.color = ColorName.primary,
    this.borderRadius,
    this.borderSide,
    this.textStyle,
    this.padding,
    required this.text,
    this.onTap,
  })  : _type = _ButtonType.outlined,
        icon = null,
        elevation = null;

  const Button.text({
    this.color = ColorName.primary,
    required this.text,
    this.textStyle,
    this.padding,
    this.onTap,
  })  : _type = _ButtonType.text,
        icon = null,
        elevation = null,
        borderRadius = null,
        borderSide = null;

  const Button.icon({
    required this.icon,
    this.borderRadius,
    this.borderSide,
    this.color = Colors.transparent,
    this.elevation = 0,
    this.padding,
    this.onTap,
  })  : _type = _ButtonType.icon,
        text = null,
        textStyle = null;

  Widget _build() {
    switch (_type) {
      case _ButtonType.solid:
        return _solid();
      case _ButtonType.outlined:
        return _outlined();
      case _ButtonType.text:
        return _text();
      case _ButtonType.icon:
        return _icon();
    }
  }

  Widget _solid() {
    return ElevatedButton(
      onPressed: onTap,
      style: ButtonStyle(
        padding: _s<EdgeInsetsGeometry>(padding ?? EdgeInsets.zero),
        shape: _s<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.zero,
            side: borderSide ?? BorderSide.none,
          ),
        ),
        backgroundColor: _s<Color>(color),
        foregroundColor: _s<Color>(ColorName.white),
      ),
      child: Text(
        text!,
        style: textStyle,
      ),
    );
  }

  Widget _outlined() {
    return OutlinedButton(
      onPressed: onTap,
      style: ButtonStyle(
        padding: _s<EdgeInsetsGeometry>(padding ?? EdgeInsets.zero),
        backgroundColor: _s<Color>(color),
        foregroundColor: _s<Color>(color),
      ),
      child: Text(
        text!,
        style: textStyle,
      ),
    );
  }

  Widget _text() {
    return TextButton(
      onPressed: onTap,
      style: ButtonStyle(
        padding: _s<EdgeInsetsGeometry>(padding ?? EdgeInsets.zero),
        foregroundColor: _s<Color>(color),
      ),
      child: Text(
        text!,
        style: textStyle,
      ),
    );
  }

  Widget _icon() {
    return IconButton(
      style: ButtonStyle(
        padding: _s<EdgeInsetsGeometry>(padding ?? EdgeInsets.zero),
      ),
      onPressed: onTap,
      icon: icon!,
    );
  }

  MaterialStateProperty<T> _s<T>(T value) =>
      MaterialStateProperty.all<T>(value);

  @override
  Widget build(BuildContext context) {
    return _build();
  }
}

enum _ButtonType {
  solid,
  outlined,
  text,
  icon,
}
