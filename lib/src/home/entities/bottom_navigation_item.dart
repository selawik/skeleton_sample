enum BottomNavigationItem {
  settings,
  codes,
  profile;

  bool get isSettings => this == BottomNavigationItem.settings;
  bool get isProfile => this == BottomNavigationItem.profile;
  bool get isCodes => this == BottomNavigationItem.codes;
}
