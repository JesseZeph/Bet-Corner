import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/image_strings.dart';
import '../../../../../constants/text_strings.dart';

class DashboardAppBar extends StatelessWidget implements PreferredSizeWidget{
  const DashboardAppBar({
    super.key,
  });

  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(
        Icons.menu,
        color: Colors.black,
      ),
      title: Text(
        jAppName,
        style: Theme.of(context).textTheme.headlineMedium,
      ),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 20, top: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: jCardBgColor),
          child: IconButton(
              onPressed:
                signUserOut,
                // Get.to(() => const ProfileScreen());

              icon: const Icon(Icons.logout), color: Colors.black,),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(55);
}
