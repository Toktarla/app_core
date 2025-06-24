extension NumExtension on num {
  String formatToPrice() {
    final regex = RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))');
    return '${toString().replaceAllMapped(regex, (m) => '${m[1]} ')} ₸';
  }
}
