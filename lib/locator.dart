import 'package:get_it/get_it.dart';
import 'package:shopuo/Screens/ProductDetails.dart';
import 'package:shopuo/Services/AuthenticationService.dart';
import 'package:shopuo/Services/CloudFunctionService.dart';
import 'package:shopuo/Services/FirebaseStorageService.dart';
import 'package:shopuo/Services/FirestoreService.dart';
import 'package:shopuo/Services/NavigationService.dart';
import 'package:shopuo/Services/OverlayService.dart';
import 'package:shopuo/ViewModels/CartViewModel.dart';
import 'package:shopuo/ViewModels/CategoriesViewModel.dart';
import 'package:shopuo/ViewModels/EntryPointViewModel.dart';
import 'package:shopuo/ViewModels/OnSaleViewModel.dart';
import 'package:shopuo/ViewModels/OrdersViewModel.dart';
import 'package:shopuo/ViewModels/ProductDetailsViewModel.dart';
import 'package:shopuo/ViewModels/ProfileViewModel.dart';
import 'package:shopuo/ViewModels/ResetPasswordViewModel.dart';
import 'package:shopuo/ViewModels/SettingsViewModel.dart';
import 'package:shopuo/ViewModels/SignInViewModel.dart';
import 'package:shopuo/ViewModels/SignUpInfoViewModel.dart';
import 'package:shopuo/ViewModels/SignUpVerifyViewModel.dart';
import 'package:shopuo/ViewModels/SignUpViewModel.dart';
import './Services/FirebaseMessagingService.dart';
import 'ViewModels/OverlayManagerViewModel.dart';

final locator = GetIt.instance;

setupLocator() {
  locator.registerFactory(() => OverlayManagerViewModel());
  locator.registerFactory(() => EntryPointViewModel());
  locator.registerFactory(() => SignInViewModel());
  locator.registerFactory(() => SignUpViewModel());
  locator.registerFactory(() => ResetPasswordViewModel());
  locator.registerFactory(() => OnSaleViewModel());
  locator.registerFactory(() => CategoriesViewModel());
  locator.registerFactory(() => CartViewModel());
  locator.registerFactory(() => SettingsViewModel());
  locator.registerFactory(() => ProfileViewModel());
  locator.registerFactory(() => SignUpInfoViewModel());
  locator.registerFactory(() => SignUpVerifyViewModel());
  locator.registerFactory(() => ProductDetailsViewModel());
  locator.registerFactory(() => OrdersViewModel());

  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => FirestoreService());
  locator.registerLazySingleton(() => AuthenticationService());
  locator.registerLazySingleton(() => OverlayService());
  locator.registerLazySingleton(() => FirebaseMessagingService());
  locator.registerLazySingleton(() => CloudFunctionService());
  locator.registerLazySingleton(() => FirebaseStorageService());
}
