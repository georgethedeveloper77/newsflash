import 'dart:async';

enum NavBarItem { HOME, EXPLORE, SOURCES, SEARCH, ADS }

class BottomNavBarBloc {
  final StreamController<NavBarItem> _navBarController =
      StreamController<NavBarItem>.broadcast();

  NavBarItem defaultItem = NavBarItem.EXPLORE;

  Stream<NavBarItem> get itemStream => _navBarController.stream;

  void pickItem(int i) {
    switch (i) {
      case 0:
        _navBarController.sink.add(NavBarItem.HOME);
        break;
      case 1:
        _navBarController.sink.add(NavBarItem.EXPLORE);
        break;
      case 2:
        _navBarController.sink.add(NavBarItem.SOURCES);
        break;
      case 3:
        _navBarController.sink.add(NavBarItem.SEARCH);
        break;
      case 4:
        _navBarController.sink.add(NavBarItem.ADS);
        break;
    }
  }

  close() {
    _navBarController?.close();
  }
}
