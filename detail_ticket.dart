import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mulycap/pages/paye_page.dart';

class DetailTicket extends StatefulWidget {
  const DetailTicket({Key? key}) : super(key: key);

  @override
  State<DetailTicket> createState() => _DetailTicketState();
}

class _DetailTicketState extends State<DetailTicket> {
  String today = DateTime.now().toString();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Détails du ticket ',
            style: GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 20)),
      ),
      body: Container(
          margin: const EdgeInsets.all(25),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment
                  .start, // THIS ROW IMPLEMENT THE TRAJET SECION
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Trajet',
                  style: TextStyle(color: Color.fromARGB(250, 84, 83, 83)),
                  textAlign: TextAlign.left,
                ),
                Row(
                  children: [
                    Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const SizedBox(
                            height: 5,
                          ),
                          Image.asset('images/DirectionIcon.jfif',
                              height: 40, width: 30),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Lushi, Katanga, Av. Lumumba',
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 18,
                                      color: const Color.fromARGB(
                                          255, 0, 41, 117))),
                              const SizedBox(
                                height: 15,
                              ),
                              Text('Lualaba, Kolwezi, Av. Lumumba',
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 18,
                                    color:
                                        const Color.fromARGB(255, 0, 41, 117),
                                  )),
                            ],
                          )
                        ],
                      ),
                    ]),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Divider(
                  thickness: 3,
                  indent: 7,
                  endIndent: 14,
                  //
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text('Horaire',
                    style: TextStyle(color: Color.fromARGB(250, 84, 83, 83))),
                const SizedBox(
                  height: 5,
                ),
                Text('Dimanche 25/12/2022',
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: const Color.fromARGB(255, 0, 41, 117))),
                const SizedBox(
                  height: 7,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Départ',
                            style: TextStyle(
                                color: Color.fromARGB(250, 84, 83, 83))),
                        const SizedBox(height: 8),
                        Text('8h 00"',
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w900,
                                fontSize: 20,
                                color: const Color.fromARGB(255, 0, 41, 117)))
                      ],
                    ),
                    const SizedBox(
                      width: 170,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Arrivé',
                            style: TextStyle(
                                color: Color.fromARGB(250, 84, 83, 83))),
                        const SizedBox(height: 8),
                        Text('12h 00"',
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w900,
                                fontSize: 20,
                                color: const Color.fromARGB(255, 0, 41, 117)))
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Divider(
                  thickness: 3,
                  indent: 7,
                  endIndent: 14,
                  //
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const Text('Numero du Bus',
                            style: TextStyle(
                                color: Color.fromARGB(250, 84, 83, 83),
                                fontSize: 15)),
                        const SizedBox(
                          height: 10,
                        ),
                        Text('MK 010',
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w900,
                                fontSize: 20,
                                color: const Color.fromARGB(255, 0, 41, 117)))
                      ],
                    ),
                    Column(
                      children: [
                        const Text('Place',
                            style: TextStyle(
                                color: Color.fromARGB(250, 84, 83, 83),
                                fontSize: 15)),
                        const SizedBox(
                          height: 10,
                        ),
                        Text('R4, L6, C2',
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w900,
                                fontSize: 20,
                                color: const Color.fromARGB(255, 0, 41, 117)))
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                const Text('Type de Bus',
                    style: TextStyle(
                        color: Color.fromARGB(250, 84, 83, 83), fontSize: 15)),
                Text('Commun L',
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                        color: const Color.fromARGB(255, 0, 41, 117))),
                Container(
                  height: 50,
                  margin: const EdgeInsets.only(top: 15),
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 141, 152, 172),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      margin: const EdgeInsets.only(top: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Prix',
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w900,
                              color: const Color.fromARGB(255, 0, 41, 117),
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            '35 000,00 Fc',
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w900,
                              color: const Color.fromARGB(255, 0, 41, 117),
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  margin: const EdgeInsets.only(top: 15),
                  padding: const EdgeInsets.only(left: 4, right: 4),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 0, 41, 117),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextButton(
                          onPressed: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (BuildContext context) {
                                  return const Bottompage();
                                });
                          },
                          child: Text(
                            'Payer',
                            style: GoogleFonts.roboto(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          )),
                  ),
                )
              ],
            ),
          )),
    );
  }
}

class Bottompage extends StatelessWidget {
  const Bottompage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(10),
      child: Container(
        margin: const EdgeInsets.only(top:60),
        child: Column(
          children: [
         
            Text('Veillez indiquer Votre mode de payement',
                style: GoogleFonts.roboto(
                    fontSize: 18,
                    color: const Color.fromARGB(255, 0, 41, 117))),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    width: 85,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),  
                    ),
                    child:  GestureDetector(
                  onTap: (){
                    Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const PayePage()));
                    
                  },
                  child: Image.asset(
                  'images/logoOrange.jfif',
                  fit: BoxFit.cover,
                  ),
              ),),
                Container(
                    width: 85,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),  
                    ),
                    child:  GestureDetector(
                  onTap: (){
                    Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const PayePage()));
                    
                  },
                  child: Image.asset(
                  'images/logoMpesa.png',
                  fit: BoxFit.cover,
                  ),
              ),),
                Container(
                    width: 85,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),  
                    ),
                    child:  GestureDetector(
                  onTap: (){
                    Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const PayePage()));
                    
                  },
                  child: Image.asset(
                  'images/logoAirtel.jfif',
                  fit: BoxFit.cover,
                  ),
              ),),
              ],
            ),
            const SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child:Text('Annuler', style: GoogleFonts.roboto(
                    fontSize: 18,
                    color: Colors.white, fontWeight: FontWeight.bold)))
          ],
        ),
      ),
    );
  }
}
