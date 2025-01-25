import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti_two/core/block/block.dart';
import 'package:nti_two/posts/view/screen/posts_screen.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: PostScreen());
  }
}
