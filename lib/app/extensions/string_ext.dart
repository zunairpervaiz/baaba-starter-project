extension NullableStringExtension on String? {
  bool get isNullOrBlankString => this == null || (this?.trim().isEmpty ?? false);
  bool get isNotNullAndNotBlankString => this != null && (this?.trim().isNotEmpty ?? false);
  String getInitials(String firstName, String? lastName) => "${firstName[0]}${lastName?[0] ?? ''}";
}
