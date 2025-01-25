import 'package:flutter/material.dart';
import 'package:nti_two/data/models/post_model.dart';

class SuccessWidgetPost extends StatelessWidget {
  const SuccessWidgetPost({super.key, required this.postModel});
  final PostModel postModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          margin: const EdgeInsets.all(6.0),
          child: ListTile(
            leading: Image(
              image: NetworkImage(postModel.image),
              width: 70,
              height: 70,
              fit: BoxFit.cover,
            ),
            title: Text(postModel.title,
                style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 45, 17, 57))),
            subtitle: Text(
              ' Price :${postModel.price.toString()} \$ ',
              style: const TextStyle(
                  color: Colors.red, fontWeight: FontWeight.bold, fontSize: 16),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_circle_right_outlined,
                  color: Colors.red),
            ),
            onTap: () {},
            // subtitle: Text(postModel.description,
            //     style: const TextStyle(
            //         fontWeight: FontWeight.bold,
            //         color: Color.fromARGB(255, 0, 0, 0))),
          ),
        ),
      ],
    );
  }
}


            // children: [
            //   Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: CircleAvatar(
            //       child: Text(postModel.id.toString()),
            //     ),
            //   ),
            //   Center(
            //       child: Text(
            //     postModel.title,
            //     style: const TextStyle(
            //         fontWeight: FontWeight.bold,
            //         color: Color.fromARGB(255, 199, 68, 255)),
            //   )),
            //   Padding(
            //     padding: const EdgeInsets.all(9.0),
            //     child: Text(postModel.description),
            //   ),
            //   Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.start,
            //       children: [
            //         const Text(
            //           'Price : ',
            //           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            //         ),
            //         Text(
            //           postModel.price.toString(),
            //           style: const TextStyle(
            //               color: Colors.red,
            //               fontWeight: FontWeight.bold,
            //               fontSize: 16),
            //         ),
            //         const Text(
            //           " \$ ",
            //           style: TextStyle(fontSize: 14),
            //         )
            //       ],