import 'package:test_searchable_dropdown/services/program_service.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

setupServiceLocator(){
  locator.registerLazySingleton<ProgramService>(() => ProgramService());
}