import 'dart:ui';

class ColorPallette {
  // return const Color(0xffb92fea);
  //Main
  Color getMainTextColor() {
    return const Color(0xFF6e6b7b);
  }

  Color getMainBgDarkColor() {
    return const Color(0xFF191919);
  }

  Color getDarkBgColor() {
    return const Color(0xFF303030);
  }

  Color getMainTextDarkColor() {
    return const Color(0xFFdfdfdf);
  }

  Color getMainDisabledColor() {
    return const Color(0xFFdfdfdf);
  }

  //Primary
  Color getPrimaryColor() {
    return const Color(0xFFd81e5b);
  }

  /*Color getPrimaryShadowColor() {
    return const Color(0xFFd81e5b);
  }*/

  Color getPrimaryDisabledColor() {
    return const Color(0xffff89c6);
  }

  //Success
  Color getSuccessColor() {
    return const Color(0xff00d700);
  }

  /*Color getSuccessShadowColor() {
    return const Color(0xd700b300);
  }*/

  Color getSuccessDisabledColor() {
    return const Color(0xff64b564);
  }

  //Info
  Color getInfoColor() {
    return const Color(0xff1f74ff);
  }

  /*Color getInfoShadowColor() {
    return const Color.fromARGB(31, 116, 255, 7);
  }*/

  Color getInfoDisabledColor() {
    return const Color(0xff4d91ff);
  }

  //Warning
  Color getWarningColor() {
    return const Color(0xffffb81f);
  }

  /*Color getWarningShadowColor() {
    return const Color.fromARGB(31, 116, 255, 7);
  }*/

  Color getWarningDisabledColor() {
    return const Color(0xffffcc5e);
  }

  //Danger
  Color getDangerColor() {
    return const Color(0xffff0000);
  }

  /*Color getWarningShadowColor() {
    return const Color.fromARGB(31, 116, 255, 7);
  }*/

  Color getDangerDisabledColor() {
    return const Color(0xffb56464);
  }
}
