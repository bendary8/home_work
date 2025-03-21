Set<String> uniqueNames(List<String> names) {
  return names.toSet();
}

void main() {
  List<String> names = [
    "mohamed",
    "ahmed",
    "bendari",
    "bondk",
    "elgoo",
    "mooo"
  ];

  Set<String> uniqueSet = uniqueNames(names);
  print("Unique Names: $uniqueSet");
}
