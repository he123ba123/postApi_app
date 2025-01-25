import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti_two/data/models/post_data.dart';
import 'package:nti_two/feature/home/cubit/cubit/Post_state.dart';

class PostCubit extends Cubit<PostState> {
  PostCubit() : super(PostInitial());
  final PostData postData = PostData();

  getDataPoatCubit() async {
    emit(Postloading());
    var response = await postData.getPostData();
    print(response);
    emit(PostSuccessState(post: response));
  }
}
