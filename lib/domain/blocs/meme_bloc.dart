import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../repository/data_connectors/meme_repo.dart';
import '../Exceptions.dart';
import '../events/meme_events.dart';
import '../models/meme.dart';
import '../state/meme_state.dart';

class MemeBloc extends Bloc<MemeEvents, MemeState> {
  MemeBloc({required this.memeRepo, required this.meme}) : super(MemeInitState());
  final MemeRepo memeRepo;
  Meme meme;

  @override
  Stream<MemeState> mapEventToState(MemeEvents event) async* {
    switch (event) {
      case MemeEvents.getNextMeme:
        yield MemeLoading();
        try {
          meme = await memeRepo.getMeme();
          yield MemeLoaded(meme: meme);
        } on SocketException {
          yield MemeError(
            error: NoInternetException('No Internet'),
          );
        } on HttpException {
          yield MemeError(
            error: NoServiceFoundException('No Service Found'),
          );
        } on FormatException {
          yield MemeError(
            error: InvalidFormatException('Invalid Response format'),
          );
        } catch (e) {
          yield MemeError(
            error: UnknownException('Unknown Error'),
          );
        }break;
    }
  }
}