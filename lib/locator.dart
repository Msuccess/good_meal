import 'package:get_it/get_it.dart';
import 'package:good_meal/core/constants/router.dart';
import 'package:good_meal/core/services/auth/auth-service.dart';
import 'package:good_meal/core/services/util/alert_service.dart';

import 'core/view_models/screens/login_view_model.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => LoginViewModel());
  locator.registerLazySingleton(() => AuthSerivce());
  locator.registerLazySingleton(() => AlertService());
  locator.registerLazySingleton(() => Router());
}
