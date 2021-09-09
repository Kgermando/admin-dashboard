import 'package:admin_dashboard/widgets/enum.dart';
import 'package:flutter/cupertino.dart';

class AppProvider with ChangeNotifier {
  DisplayPage? currentPage;

  AppProvider.init() {
    changeCurrentPage(DisplayPage.dashboard);
  }

  changeCurrentPage(DisplayPage newPage) {
    currentPage = newPage;
    notifyListeners();
  }
}
