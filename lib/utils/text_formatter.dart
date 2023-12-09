extension TextFormatter on String {
  String formatFirebaseError() {
    RegExp regExp = RegExp(r'\s*\[.*?\]\s*');
    return replaceAll(regExp, '');
  }
}
