import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';
import 'injection.config.dart';
final locator = GetIt.instance;
@injectableInit
GetIt configureInjection() => $initGetIt(locator);
