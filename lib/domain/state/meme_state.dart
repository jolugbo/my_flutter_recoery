import 'package:equatable/equatable.dart';

import '../models/meme.dart';


abstract class MemeState extends Equatable {
  @override
  List<Object> get props => [];
}


class MemeInitState extends MemeState {}

class MemeLoading extends MemeState {}

class MemeLoaded extends MemeState {
  final Meme meme;
  MemeLoaded({required this.meme});
}

class MemeError extends MemeState {
  final error;
  MemeError({this.error});
}