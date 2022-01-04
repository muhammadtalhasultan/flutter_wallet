import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_wallet/util/file_path.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 18, right: 18, top: 34),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _contentHeader(),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Account Overview',
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: const Color(0xff3A4276),
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              _contentOverView(),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Send Money',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: const Color(0xff3A4276),
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SvgPicture.asset(
                    scan,
                    width: 18,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              _contentSendMoney(),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Services',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: const Color(0xff3A4276),
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SvgPicture.asset(
                    filter,
                    width: 16,
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              _contentServices(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _contentHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            SvgPicture.asset(
              logo,
              width: 34,
            ),
            const SizedBox(
              width: 12,
            ),
            Text(
              'eWalle',
              style: GoogleFonts.poppins(
                fontSize: 22,
                color: const Color(0xff3A4276),
                fontWeight: FontWeight.w800,
              ),
            )
          ],
        ),
        SvgPicture.asset(
          menu,
          width: 16,
        ),
      ],
    );
  }

  Widget _contentOverView() {
    return Container(
      padding: const EdgeInsets.only(left: 18, right: 18, top: 22, bottom: 22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xffF1F3F6),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '20,600',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  color: const Color(0xff171822),
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                'Current Balance',
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: const Color(0xff3A4276).withOpacity(1),
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
          RaisedButton(
            onPressed: () {},
            elevation: 0,
            padding: const EdgeInsets.all(12),
            child: const Text(
              '+',
              style: TextStyle(
                fontSize: 22,
                color: Color(0xff1B1D28),
              ),
            ),
            shape: const CircleBorder(),
            color: const Color(0xffFFAC30),
          )
        ],
      ),
    );
  }

  Widget _contentSendMoney() {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 80,
            padding: const EdgeInsets.all(18),
            child: RaisedButton(
              onPressed: () {},
              elevation: 0,
              padding: const EdgeInsets.all(12),
              child: const Text(
                '+',
                style: TextStyle(
                  fontSize: 22,
                  color: Color(0xff1B1D28),
                ),
              ),
              shape: const CircleBorder(),
              color: const Color(0xffFFAC30),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 10),
            padding: const EdgeInsets.all(16),
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xffF1F3F6),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(color: const Color(0xffD8D9E4))),
                  child: CircleAvatar(
                    radius: 22.0,
                    backgroundColor: Colors.white,
                    child: ClipRRect(
                      child: SvgPicture.asset(avatorOne),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                ),
                Text(
                  'Mike',
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: const Color(0xff3A4276),
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 10),
            padding: const EdgeInsets.all(16),
            width: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffF1F3F6)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: const Color(0xffD8D9E4))),
                  child: CircleAvatar(
                    radius: 22.0,
                    backgroundColor: Colors.white,
                    child: ClipRRect(
                      child: SvgPicture.asset(avatorTwo),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                ),
                Text(
                  'Joseph',
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: const Color(0xff3A4276),
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 10),
            padding: const EdgeInsets.all(16),
            width: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffF1F3F6)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: const Color(0xffD8D9E4))),
                  child: CircleAvatar(
                    radius: 22.0,
                    backgroundColor: Colors.white,
                    child: ClipRRect(
                      child: SvgPicture.asset(avatorThree),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                ),
                Text(
                  'Ashley',
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: const Color(0xff3A4276),
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _contentServices(BuildContext context) {
    List<ModelServices> listServices = [];

    listServices.add(ModelServices(title: "Send\nMoney", img: send));
    listServices.add(ModelServices(title: "Receive\nMoney", img: recive));
    listServices.add(ModelServices(title: "Mobile\nPrepaid", img: mobile));
    listServices
        .add(ModelServices(title: "Electricity\nBill", img: electricity));
    listServices.add(ModelServices(title: "Cashback\nOffer", img: cashback));
    listServices.add(ModelServices(title: "Movie\nTickets", img: movie));
    listServices.add(ModelServices(title: "Flight\nTickets", img: flight));
    listServices.add(ModelServices(title: "More\nOptions", img: menu));

    return SizedBox(
      width: double.infinity,
      height: 400,
      child: GridView.count(
        crossAxisCount: 4,
        childAspectRatio: MediaQuery.of(context).size.width /
            (MediaQuery.of(context).size.height / 1.1),
        children: listServices.map((value) {
          return GestureDetector(
            onTap: () {
              print('${value.title}');
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 50,
                  height: 50,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xffF1F3F6)),
                  child: SvgPicture.asset(
                    value.img,
                    // height: 8,
                    // width: 8,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  value.title,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: const Color(0xff3A4276),
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 14,
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}

class ModelServices {
  String title, img;
  ModelServices({required this.title, required this.img});
}
