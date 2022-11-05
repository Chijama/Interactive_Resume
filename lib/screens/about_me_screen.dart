import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interactiveresume/widgets/certification.dart';
import 'package:interactiveresume/widgets/skill.dart';
import '../widgets/contact.dart';
import '../widgets/projects.dart';

import '../widgets/education_work.dart';
import '../widgets/title_widget.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({super.key});
  static const routeName = '/about-me';
  static const Color mainColor = Color.fromARGB(193, 22, 158, 151);
  static const Color mainTextColor = Colors.black;
  static const Color burgundy = Color.fromARGB(207, 136, 11, 32);
  static const Color shadow_color = Color.fromARGB(255, 139, 129, 129);
  Widget circlIcon(IconData icon) {
    return CircleAvatar(
      backgroundColor: Color.fromARGB(207, 136, 11, 32),
      child: Icon(icon, color: Colors.white),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: mainColor,
        title: const Text(
          'My Resume',
          //style: GoogleFonts.roboto(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: <Widget>[
                Container(
                  // constraints: BoxConstraints.expand(
                  //   width: double.infinity,
                  //   height: size.height / 2.0,
                  // ),
                  height: size.height / 2,
                  width: size.width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image:
                            AssetImage('assets/images/stare_cropped_img.jpg'),
                        fit: BoxFit.contain),
                  ),
                  child: Container(),
                ),
                Positioned(
                  bottom: 20,
                  left: 0,
                  child: Card(
                    elevation: 8,
                    color: Colors.black54,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    shadowColor: shadow_color,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      width: 300,
                      height: 100,
                      child: Column(
                        children: [
                          Text(
                            "Chijama Chidera",
                            style: GoogleFonts.raleway(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 35),
                          ),
                          Text(
                            'Flutter Developer',
                            style: GoogleFonts.montserrat(
                                color: mainColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 10,
            ),
            const TitleWidget(shadow_color, mainTextColor, 'About Me'),

            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam laoreet neque eu pulvinar venenatis. Cras eleifend erat eu vulputate interdum. Ut sagittis ac arcu id commodo. Nam sed convallis neque. Duis vitae posuere mi. Cras velit dolor, aliquam vitae convallis id, tincidunt in turpis. Maecenas fermentum lacus quis dui faucibus ultrices.",
                style: GoogleFonts.openSans(
                    color: mainTextColor,
                    fontWeight: FontWeight.normal,
                    fontSize: 15),
              ),
            ),
            // ),
            SizedBox(
              height: size.height * 0.06,
            ),
            TitleWidget(shadow_color, mainTextColor, 'Education'),
            SizedBox(
              height: size.height * 0.06,
            ),
            ConstrainedBox(
              constraints: BoxConstraints.tightFor(
                width: 700,
                height: size.height * 0.4,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                            height: size.height * 0.3,
                            //color: Colors.indigo,
                            child: Stack(
                              children: [
                                Center(
                                  child: VerticalDivider(
                                    color: mainColor,
                                    thickness: 3.0,
                                    width: 10,
                                    indent: 10,
                                    endIndent: 10,
                                  ),
                                ),
                                Container(
                                  child: Center(
                                      child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      circlIcon(Icons.book),
                                      circlIcon(Icons.book),
                                    ],
                                  )),
                                )
                              ],
                            )),
                      ),
                      Expanded(
                          flex: 4,
                          child: Container(
                            height: size.height * 0.3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                WorkCustomData(
                                  title: 'Computer Science',
                                  subTitle: 'Covenant University',
                                  duration: '08/2018-08/2022',
                                  location:
                                      'KM 10 Idiroko Rd, Ota, Ogun, Nigeria',
                                  mainTextColor: mainTextColor,
                                  burgundyTextColor: burgundy,
                                ),
                                WorkCustomData(
                                  title: 'Senior Secondary School',
                                  subTitle: 'New Estate Baptist School',
                                  duration: '09/2015 - 06/2018',
                                  location:
                                      '57, Adisa Bashua, off Adelabu St, Masha,\n Lagos,Nigeria.',
                                  mainTextColor: mainTextColor,
                                  burgundyTextColor: burgundy,
                                ),
                              ],
                            ),
                          ))
                    ],
                  )
                ],
              ),
            ),
            TitleWidget(shadow_color, mainTextColor, 'My Experience'),
            SizedBox(
              height: size.height * 0.06,
            ),
            ConstrainedBox(
              constraints: BoxConstraints.tightFor(
                width: 700,
                height: size.height * 0.5,
              ),
              child: ListView(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                            height: size.height * 0.7,
                            //color: Colors.indigo,
                            child: Stack(
                              children: [
                                Center(
                                  child: VerticalDivider(
                                    color: mainColor,
                                    thickness: 3.0,
                                    width: 10,
                                    indent: 10,
                                    endIndent: 10,
                                  ),
                                ),
                                Container(
                                  child: Center(
                                      child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      circlIcon(Icons.work),
                                      circlIcon(Icons.work),
                                      circlIcon(Icons.work),
                                      circlIcon(Icons.work),
                                    ],
                                  )),
                                )
                              ],
                            )),
                      ),
                      Expanded(
                          flex: 4,
                          child: Container(
                            height: size.height * 0.7,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                WorkCustomData(
                                  title: 'Cyber Security Manager Intern',
                                  subTitle: 'Huawei Technologies Nigeria',
                                  duration: '05/2021 - 10/2021',
                                  location:
                                      'Oriental Hotel ,Builiding II, Lekki - Epe Expy,\n Victoria Island, Lagos',
                                  mainTextColor: mainTextColor,
                                  burgundyTextColor: burgundy,
                                ),
                                WorkCustomData(
                                  title: 'Spa Attendant',
                                  subTitle: 'Cosengy Beauty Spa',
                                  duration: '05/2019 - 01/2021,',
                                  location:
                                      '69, Aderin Ogunsanya, Beside Slot, Surulere,\n Lagos',
                                  mainTextColor: mainTextColor,
                                  burgundyTextColor: burgundy,
                                ),
                                WorkCustomData(
                                  title: 'Volunteer',
                                  subTitle: 'DreamCode Africa',
                                  duration: '04/2022 - Present',
                                  location:
                                      'Hebron startup lab, 3rd floor, CUCRID Building, Covenant University,\n KM 10 Idiroko Rd, Ota, Ogun Nigeria',
                                  mainTextColor: mainTextColor,
                                  burgundyTextColor: burgundy,
                                ),
                                WorkCustomData(
                                  title: 'Head Opportunities Content Volunteer',
                                  subTitle: 'Envisage hub',
                                  duration: '04/2021 - 01/2022,',
                                  location: 'Remote',
                                  mainTextColor: mainTextColor,
                                  burgundyTextColor: burgundy,
                                ),
                              ],
                            ),
                          ))
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.06,
            ),
            SizedBox(
              height: size.height * 0.06,
            ),
            TitleWidget(shadow_color, mainTextColor, 'Skills'),
            SizedBox(
              height: size.height * 0.06,
            ),
            Skills(mainColor, mainTextColor),
            SizedBox(
              height: size.height * 0.06,
            ),
            TitleWidget(shadow_color, mainTextColor, 'Projects'),
            SizedBox(
              height: size.height * 0.06,
            ),
            Projects(),
            SizedBox(
              height: size.height * 0.06,
            ),
            TitleWidget(shadow_color, mainTextColor, 'Certifications'),
            SizedBox(
              height: size.height * 0.06,
            ),
            Certifications(),
            Divider(
              color: mainColor,
              endIndent: size.width * 0.2,
              indent: size.width * 0.2,
              //height: size.height * 0.05,
            ),

            Contact(mainTextColor, burgundy, mainColor),
            SizedBox(
              height: size.height * 0.08,
            ),
          ],
        ),
      ),
    );
  }
}
