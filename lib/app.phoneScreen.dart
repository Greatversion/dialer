import 'package:dialerapp/app.bottomNavbar.dart';
import 'package:dialerapp/utils/colors.dart';
import 'package:dialerapp/utils/customWidgets.dart';
import 'package:dialerapp/models/app.userLists.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PhoneScreen extends StatelessWidget {
  const PhoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.menu_rounded)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2.0),
        child: Column(
          children: [
            // TextField(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              CupertinoIcons.search,
                            )),
                        hintText: "Recent Calls",
                        hintStyle:
                            const TextStyle(fontSize: 24, color: Colors.black)),
                  ),
                  const Divider(),
                ],
              ),
            ),
            // const SizedBox(height: 2),
            customChip("Today"),
            Expanded(
              child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return list[index];
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomBar(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorPallete.dialer,
        onPressed: () {
          // Navigator.push(context, MaterialPageRoute(builder: (context) {
          // return CustomBottomNavBars();
          // }));
        },
        child: const Icon(
          Icons.dialpad_rounded,
          size: 40,
        ),
      ),
    );
  }
}
