import 'package:good_meal/core/services/auth/auth_service.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providers = [
  ...independentServices,
  ...dependentServices,
  ...uiConsumableProviders,
];


List<SingleChildWidget> independentServices = [
 Provider.value(value: AuthService())
];

List<SingleChildWidget> dependentServices = [
  
];

List<SingleChildWidget> uiConsumableProviders = [];