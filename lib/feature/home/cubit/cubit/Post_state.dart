import 'package:nti_two/data/models/post_model.dart';

sealed class PostState {}

final class PostInitial extends PostState {}

final class Postloading extends PostState {
}

final class PostSuccessState extends PostState {
  List<PostModel> post;
  PostSuccessState({required this.post});
}

final class PostFailureState extends PostState {
  final String error;
  PostFailureState({required this.error});
}
