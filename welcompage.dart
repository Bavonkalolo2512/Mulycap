import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mulycap/pages/detail_ticket.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: WelcomPage(),
  ));
}

class WelcomPage extends StatelessWidget {
  const WelcomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        title: Text('Mulycap',
            style: GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 20)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const PartOne(),
            const PartTwo(),
            PartThree(),
            const PartFour(),
            const Partfive(),
          ],
        ),
      ),
    );
  }
}

//________________________________PART 1_______________________________________

class PartOne extends StatelessWidget {
  const PartOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: 220,
      child: Container(
          height: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              image: const DecorationImage(
                image: AssetImage("images/busImage3.jfif"),
                fit: BoxFit.fill,
              ))),
    );
  }
}

//________________________________PART 2_______________________________________

class PartTwo extends StatelessWidget {
  const PartTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text('Aujourd\'hui',
            style:
                GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w700)),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Tout Voir',
                style: GoogleFonts.roboto(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromARGB(255, 43, 92, 226))),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.chevron_right,
                  size: 15,
                  color: Color.fromARGB(255, 43, 92, 226),
                ))
          ],
        )
      ],
    );
  }
}

//________________________________PART 3_______________________________________
class PartThree extends StatelessWidget {
  PartThree({Key? key}) : super(key: key);

  final List maliste = [
    {
      'photo': 'images/busCatalogue/bus2.jfif',
      'heure': '8h30 \'\'',
      'depart': 'Lubumbashi',
      'destination': 'Kolwezi',
      'availablePlace': '20'
    },
    {
      'photo': 'images/busCatalogue/bus4.jfif',
      'heure': '10h30 \'\'',
      'depart': 'Lubumbashi',
      'destination': 'Likasi',
      'availablePlace': '30'
    },
    {
      'photo': 'images/busCatalogue/bus5.jfif',
      'heure': '12h30 \'\'',
      'depart': 'Likasi',
      'destination': 'Fungurume',
      'availablePlace': '13'
    },
    {
      'photo': 'images/busCatalogue/bus3.jfif',
      'heure': '12h30 \'\'',
      'depart': 'Lubumbashi',
      'destination': 'Fungurume',
      'availablePlace': '13'
    },
    {
      'photo': 'images/busCatalogue/bus1.jfif',
      'heure': '12h30 \'\'',
      'depart': 'Kolwezi',
      'destination': 'Fungurume',
      'availablePlace': '13'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: maliste.map((maliste) {
        return Container(
          margin: const EdgeInsets.all(10.0),
          width: 200,
          height: 305,
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            children: [
              Container(
                  // la Photo des bus disponibles a l'interieur du box des row vertical
                  padding: const EdgeInsets.all(5),
                  height: 135,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: AssetImage(maliste['photo']),
                        fit: BoxFit.fill,
                      ))),
              Expanded(
                  child: Column(
                children: [
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Depart à ',
                          style: GoogleFonts.roboto(
                            fontSize: 15,
                          )),
                      Text(
                        maliste['heure'],
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w900,
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const SizedBox(
                          width: 5,
                        ),
                        Image.asset('images/DirectionIcon.jfif',
                            height: 30, width: 30),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(maliste['depart'],
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w900,
                                )),
                            const SizedBox(
                              height: 7,
                            ),
                            Text(maliste['destination'],
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w900,
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                  Text(maliste['availablePlace'] + ' place disponibles',
                      style: const TextStyle(fontStyle: FontStyle.italic)),
                  const SizedBox(
                    height: 5,
                  ),
                  ElevatedButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const[Text("Voir"),]
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DetailTicket()));
                      }),
                ],
              ))
            ],
          ),
        );
      }).toList()),
    );
  }
}

//________________________________PART 4_______________________________________
class PartFour extends StatelessWidget {
  const PartFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text('Bus Disponible',
            style:
                GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w700)),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Tout Voir',
                style: GoogleFonts.roboto(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromARGB(255, 43, 92, 226))),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.chevron_right,
                  size: 15,
                  color: Color.fromARGB(255, 43, 92, 226),
                ))
          ],
        )
      ],
    );
  }
}

//________________________________PART 5_______________________________________
class Partfive extends StatelessWidget {
  const Partfive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 540,
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            //margin: const EdgeInsets.all(2),
            height: 257.5,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 156, 181, 202),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(
                        width: 167,
                        height: 230,
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 180,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage(
                                      "images/busCatalogue/bus4.jfif"),
                                  fit: BoxFit.fill,
                                ),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                            const SizedBox(height: 15),
                            Container(
                              decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 9, 82, 218),
                              borderRadius: BorderRadius.circular(20)),
                              height: 35,
                              width: 220,
                              padding: const EdgeInsets.only(
                                  left: 5, top: 0.5),
                              child: TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Reserver',
                                    style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold  ),
                                  )),
                            )
                          ],
                        ))
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                        width: 150,
                        height: 220,
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text('Fugurume',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 14, 45, 71))),
                            SizedBox(height: 10),
                            Flexible(
                                child: Text(
                                    'Coeur lorem ipsum dolor sit tempor incididunt ut labore et dolore magna aliqua Ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoExcepteur sint occaecat cupidatat non proident ipsum dolor sit amet, consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore',
                                    style: TextStyle(color: Colors.white),
                                    textAlign: TextAlign.justify))
                          ],
                        ))
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 15,),
            Container(
            padding: const EdgeInsets.all(5),
            //margin: const EdgeInsets.all(2),
            height: 257.5,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 156, 181, 202),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(
                        width: 167,
                        height: 230,
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 180,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage(
                                      "images/busCatalogue/bus4.jfif"),
                                  fit: BoxFit.fill,
                                ),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                            const SizedBox(height: 15),
                            Container(
                              decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 9, 82, 218),
                              borderRadius: BorderRadius.circular(20)),
                              height: 35,
                              width: 220,
                              padding: const EdgeInsets.only(
                                  left: 5, top: 0.5),
                              child: TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Reserver',
                                    style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold  ),
                                  )),
                            )
                          ],
                        ))
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                        width: 150,
                        height: 220,
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text('Fugurume',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 14, 45, 71))),
                            SizedBox(height: 10),
                            Flexible(
                                child: Text(
                                    'Coeur lorem ipsum dolor sit tempor incididunt ut labore et dolore magna aliqua Ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoExcepteur sint occaecat cupidatat non proident ipsum dolor sit amet, consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore',
                                    style: TextStyle(color: Colors.white),
                                    textAlign: TextAlign.justify))
                          ],
                        ))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
