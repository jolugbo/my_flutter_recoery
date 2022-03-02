import 'package:get_it/get_it.dart';
import 'package:my_flutter_recovery/repository/meme_repo.dart';

import 'domain/meme_conrtoller.dart';

final locator = GetIt.instance;

void setup(){
  locator.registerSingleton<MemeRepo>(MemeRepo());
  locator.registerLazySingleton<MemeDomainController>(() => MemeDomainController());
}