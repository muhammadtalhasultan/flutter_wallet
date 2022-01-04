import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_wallet/ui/screen/home.dart';
import 'package:flutter_wallet/util/file_path.dart';
import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  static DateTime now = DateTime.now();
  String formattedTime = DateFormat.jm().format(now);
  String formattedDate = DateFormat('MMM d, yyyy | EEEEEE').format(now);
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.centerLeft,
              child: SvgPicture.asset(mainBanner),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _topContent(),
                  _centerContent(),
                  _bottomContent()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _topContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(
          height: 18, // MediaQuery.of(context).size.height
        ),
        Row(
          children: <Widget>[
            Text(
              formattedTime,
              style: GoogleFonts.poppins(
                fontSize: 20,
                color: const Color(0xff1B1D28),
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            SvgPicture.asset(cloud),
            const SizedBox(
              width: 8,
            ),
            Text(
              '34° C',
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: const Color(0xff1B1D28),
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 2,
        ),
        Text(
          formattedDate,
          style: GoogleFonts.poppins(
            fontSize: 12,
            color: const Color(0xff1B1D28),
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }

  Widget _centerContent() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SvgPicture.asset(logo),
          const SizedBox(
            height: 18,
          ),
          Text(
            'eWalle',
            style: GoogleFonts.poppins(
              fontSize: 22,
              color: const Color(0xff1B1D28),
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          Text(
            'Open An Account For Digital  E-Wallet Solutions.\nInstant Payouts. \n\nJoin For Free.',
            style: GoogleFonts.poppins(
              fontSize: 14,
              height: 1.6,
              color: const Color(0xff7b7f9e),
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }

  Widget _bottomContent() {
    return Column(
      children: <Widget>[
        MaterialButton(
          elevation: 0,
          color: const Color(0xFFFFAC30),
          height: 50,
          minWidth: 200,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            );
          },
          child: Text(
            'Sign in',
            style: GoogleFonts.poppins(
              fontSize: 15,
              height: 1.6,
              color: const Color(0xff212330),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          'Create an Account',
          style: GoogleFonts.poppins(
            fontSize: 11,
            color: const Color(0xff212330),
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
