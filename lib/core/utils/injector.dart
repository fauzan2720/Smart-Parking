import 'package:get_it/get_it.dart';

import '../../features/auth/auth.dart';
import '../../features/parking/parking.dart';
import '../db/user_secure_db.dart';

final GetIt locator = GetIt.instance;

void init() {
  Auth.injection();
  Parking.injection();

  locator.registerLazySingleton(() => UserSecureDb());
}
