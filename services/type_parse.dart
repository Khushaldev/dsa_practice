extension ParseInt on String {
  int toInt() {
    if (this.isEmpty) {
      return 0;
    }
    return int.parse(this);
  }
}
