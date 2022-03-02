import 'package:get_it/get_it.dart';
import 'package:my_flutter_recovery/repository/data_connectors/meme_repo.dart';

import 'domain/controllers/meme_conrtoller.dart';

final locator = GetIt.instance;

void setup(){
  print("entered setup");
  locator.registerLazySingleton<MemeRepo>(
        () => MemeRepo(),
  );
  locator.registerLazySingleton<MemeDomainController>(
        () => MemeDomainController(),
  );
}