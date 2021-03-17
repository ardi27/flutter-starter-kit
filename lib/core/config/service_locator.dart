import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'package:starter_kit/core/config/service_locator.config.dart';

final getIt=GetIt.instance;
@InjectableInit()
void configureDependencies() => $initGetIt(getIt);


