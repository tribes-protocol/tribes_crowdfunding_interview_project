import 'package:flutter/material.dart';

class UserTile extends StatelessWidget {
  final Function()? onPressed;
  final Widget? title;
  final Widget? trailing;
  const UserTile({Key? key, this.onPressed, this.title, this.trailing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          color: Colors.grey[200],
        ),
        padding: const EdgeInsets.only(right: 8),
        height: 50,
        width: width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              color: Colors.white,
              height: 50,
              width: width / 2,
              child: title,
            ),
            trailing ?? const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
