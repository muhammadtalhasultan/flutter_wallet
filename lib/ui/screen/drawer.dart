import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_wallet/ui/screen/home.dart';
import 'package:flutter_wallet/ui/screen/home.dart';
import 'package:flutter_wallet/util/file_path.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

List<Map> drawerItems = [
  {'selected': true, 'title': 'Home'},
  {'selected': false, 'title': 'Profile'},
  {'selected': false, 'title': 'Accounts'},
  {'selected': false, 'title': 'Transactions'},
  {'selected': false, 'title': 'Stats'},
  {'selected': false, 'title': 'Settings'},
  {'selected': false, 'title': 'Help'},
];

class _DrawerScreenState extends State<DrawerScreen> {
// HomePage homePage=HomePage();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: Theme.of(context).backgroundColor,
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            border: Border.all(color: const Color(0xffD8D9E4))),
                        child: CircleAvatar(
                          radius: 22.0,
                          backgroundColor: Theme.of(context).backgroundColor,
                          child: ClipRRect(
                            child: SvgPicture.asset(avatorOne),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Muhammad Talha Sultan',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Active Status',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                  child: SvgPicture.asset(cross),
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
            Column(
              children: drawerItems
                  .map((element) => Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Row(
                          children: [
                            element['selected'] == true
                                ? Container(
                                    height: 40,
                                    width: 5,
                                    color: const Color(0xffFFAC30),
                                  )
                                : Container(
                                    height: 40,
                                    width: 5,
                                    color: Theme.of(context).accentColor),
                            // Icon(
                            //   element['icon'],
                            //   color: Colors.white,
                            //   size: 25,
                            // ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              element['title'],
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: element['selected'] == true
                                    ? FontWeight.bold
                                    : FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ))
                  .toList(),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: const [
                  Icon(
                    Icons.power_settings_new,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Logout',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
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
