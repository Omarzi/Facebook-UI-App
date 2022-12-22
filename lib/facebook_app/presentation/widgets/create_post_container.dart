import 'package:facebook_ui/facebook_app/data/models/user_model.dart';
import 'package:facebook_ui/facebook_app/presentation/widgets/profile_avatar.dart';
import 'package:facebook_ui/facebook_app/presentation/widgets/responsive.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  const CreatePostContainer({
    Key? key,
    required this.currentUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = Responsive.isDesktop(context);
    return Card(
      margin: EdgeInsets.symmetric(horizontal: isDesktop ? 5.0 : 0.0),
      elevation: isDesktop ? 1.0 : 0.0,
      shape: isDesktop
          ? RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))
          : null,
      child: Container(
        padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                ProfileAvatar(imageUrl: currentUser.imageUrl),
                const SizedBox(width: 8.0),
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration.collapsed(
                      hintText: 'What\'s on your mind?',
                    ),
                  ),
                )
              ],
            ),
            const Divider(height: 10.0, thickness: 0.5),
            SizedBox(
              height: 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      if (kDebugMode) {
                        print('Live');
                      }
                    },
                    child: Row(
                      children: const [
                        Icon(Icons.videocam, color: Colors.red),
                        SizedBox(width: 5),
                        Text('Live'),
                      ],
                    ),
                  ),
                  const VerticalDivider(width: 8.0),
                  InkWell(
                    onTap: () {
                      if (kDebugMode) {
                        print('Photo');
                      }
                    },
                    child: Row(
                      children: const [
                        Icon(Icons.photo_library, color: Colors.green),
                        SizedBox(width: 5),
                        Text('Photo'),
                      ],
                    ),
                  ),
                  const VerticalDivider(width: 8.0),
                  InkWell(
                    onTap: () {
                      if (kDebugMode) {
                        print('Room');
                      }
                    },
                    child: Row(
                      children: const [
                        Icon(Icons.video_call, color: Colors.purpleAccent),
                        SizedBox(width: 5),
                        Text('Room'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
