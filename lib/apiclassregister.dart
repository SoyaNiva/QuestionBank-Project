class DropdownValue {
  final String id;
  final String name;

  DropdownValue({required this.id, required this.name});

  @override
  String toString() {
    return name;
  }
}