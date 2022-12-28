import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mulycap/pages/qrpage.dart';


class PayePage extends StatelessWidget {
  const PayePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Paiements',
            style: GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 20)),
      ),
    //  drawer: const Drawer(),
      body: Container(
          margin: const EdgeInsets.all(25),
          child: Column(
            // THIS ROW IMPLEMENT THE TRAJET SECION
            children: [
              Container(
                height: 70,
                margin: const EdgeInsets.only(top: 25),
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 141, 152, 172),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: Flexible(
                        child: Text(
                            'Veuillez indiquer les informations concernant le proprietaire du ticket',
                            style: GoogleFonts.roboto(
                              fontSize: 20,
                                fontWeight: FontWeight.w900,
                                color:const Color.fromARGB(255, 0, 41, 117)), textAlign: TextAlign.center,)),
                  ),
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              TextFormField(
                decoration:  const InputDecoration(
                  labelText: 'Nom',
                  hintText: 'Nom Complet du client',
                 // border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                  
                ), 
              ),
              const SizedBox(
                height: 30.0,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Numero',
                  hintText: 'Numero de Telephone',
                  prefixIcon: Icon(Icons.phone_android),
                  
                ), 
              ),
              
              Container(
                height: 50,
                margin: const EdgeInsets.only(top: 25),
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 41, 117),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder:  (context) => Qrpage()));
                    },
                    child: Text(
                      'Payer',
                      style: GoogleFonts.roboto(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
