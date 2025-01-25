import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti_two/appar.dart';
import 'package:nti_two/data/models/post_data.dart';
import 'package:nti_two/feature/home/cubit/cubit/Post_cubit.dart';
import 'package:nti_two/feature/home/cubit/cubit/Post_state.dart';
import 'package:nti_two/posts/view/widgets/succes_post.dart';

class PostScreen extends StatelessWidget {
  PostScreen({super.key});
  final PostData postData = PostData();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PostCubit()..getDataPoatCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 254, 103, 92),
          onPressed: () {},
          child: const Icon(Icons.search),
        ),
        appBar: appBarHome(),
        body: BlocBuilder<PostCubit, PostState>(
          builder: (context, state) {
            if (state is PostSuccessState) {
              return ListView.builder(
                  itemCount: state.post.length,
                  itemBuilder: (context, index) {
                    return SuccessWidgetPost(
                      postModel: state.post[index],
                    );
                  });
            } else if (state is PostFailureState) {
              return Text(state.error);
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
