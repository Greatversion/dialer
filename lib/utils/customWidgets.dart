import 'package:dialerapp/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget customChip(String text) {
  return Container(
    decoration: BoxDecoration(
        color: ColorPallete.chip, borderRadius: BorderRadius.circular(5)),
    child: Padding(
      padding: const EdgeInsets.all(4.0),
      child: Text(
        text,
        style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
      ),
    ),
  );
}

class CustomListTiles extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String number;
  final bool callType;
  final String time;
  const CustomListTiles({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.number,
    required this.callType,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: NetworkImage(imageUrl),
        child: Align(
          alignment: Alignment.bottomRight,
          child: Stack(
            alignment: Alignment.center,
            children: [
              const CircleAvatar(
                radius: 9,
                backgroundColor: Colors.white,
              ),
              CircleAvatar(
                radius: 6,
                backgroundColor: callType ? Colors.red : Colors.green,
              )
            ],
          ),
        ),
      ),
      title: Text(name),
      subtitle: Text(number),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          callType
              ? const Icon(CupertinoIcons.phone_arrow_up_right,
                  color: Colors.red)
              : const Icon(CupertinoIcons.phone_arrow_down_left,
                  color: Colors.green),
          const SizedBox(width: 15),
          Text(time)
        ],
      ),
    );
  }
}
