import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mulycap/pages/welcompage.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home:Qrpage(),));
}





class Qrpage extends StatefulWidget {
  Qrpage({Key? key}) : super(key: key);

  @override
  _QrpageState createState() => _QrpageState();
}

class _QrpageState extends State<Qrpage> {
  String qrdata = 'https://github.com/Bavonkalolo';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder:  (context) => const WelcomPage()));
          }, icon:const Icon(Icons.check))
        ],
        centerTitle: true,
        title: Text('Mulycap',
            style: GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 20)),
      ),

      body:Container(
      color: Colors.white,
      padding: const EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
           Text('Merci de nous faire confiance ', style: GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 20,color:const Color.fromARGB(255, 0, 41, 117) ), textAlign: TextAlign.center,),
           const SizedBox(height: 20,),
            QrImage(
              data: qrdata,
              backgroundColor: const Color.fromARGB(255, 187, 183, 183),
              gapless: false
            ),
           const SizedBox(height: 10,),
             Container(
            padding: const EdgeInsets.all(10),
            decoration:BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 0, 41, 117)
            ),
            child: Flexible(child: Text('Il est recommande d\'arriver 1H avant l\'heure d\'embarquement',style: GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white ), textAlign: TextAlign.center,)),
            )
          ],
        ),
      ),
    ),

    );
  }
}
