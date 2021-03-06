import 'package:flutter/cupertino.dart';
import 'package:shopuo/Models/CategoryModel.dart';
import 'package:shopuo/Services/FirestoreService.dart';
import 'package:shopuo/Services/NavigationService.dart';
import 'package:shopuo/locator.dart';

class CategoriesViewModel with ChangeNotifier {
  // SERVICES
  final _firestoreService = locator<FirestoreService>();
  final _navigationService = locator<NavigationService>();

  // PAGE DATA
  List<CategoryModel> categories = [];

  //  METHODS
  navigateToOrders() {
    _navigationService.navigateTo("Orders");
  }

  setUpModel() async {
    try {
      List<CategoryModel> result =
          await _firestoreService.getDataCollection<CategoryModel>(
        path: "categories",
        builder: ({data, documentID, snapshot}) => CategoryModel.fromMap(
          data: data,
          documentId: documentID,
        ),
      );

      categories = result;
      notifyListeners();
    } catch (e) {
      print(e);
    }
  }
}
