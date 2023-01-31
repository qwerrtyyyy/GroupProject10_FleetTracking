import 'package:flutter/material.dart';
import 'package:fleet/viewlist.dart';
import 'package:cloud_firestore/cloud_firestore.dart'; 

class registerFleet extends StatefulWidget {
  const registerFleet({super.key});



  @override
  State<registerFleet> createState() => _registerFleet();
}

class _registerFleet extends State<registerFleet> {
  TextEditingController fleetNumController = TextEditingController();
  TextEditingController fleetNameController = TextEditingController();
  TextEditingController dateRegController = TextEditingController();
  TextEditingController fleetLoctController = TextEditingController();
  TextEditingController fleetStatusController = TextEditingController();
  
void submitPup(BuildContext context){
    if(fleetLoctController.text.isEmpty){
      print("Please Enter Fleet Number!");
    } else{
      var newFleet = registerFleet();

      Navigator.of(context).pop(newFleet);
      
    }
    }
 

   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_outlined,
              size: 20,
              color: Colors.black,
            )),
      ),
      body: Container(
        color: Colors.white10,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8.0,
            horizontal: 32.0,
          ),

          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: TextField(
                    controller: fleetNumController,
                    onChanged: (v) => fleetNumController.text = v,
                    decoration: InputDecoration(
                      labelText: 'Fleet Number',
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: TextField(
                    controller: fleetNameController,
                    onChanged: (v) => fleetNameController.text = v,
                    decoration: InputDecoration(
                      labelText: "Fleet Name",
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: TextField(
                    controller: dateRegController,
                    onChanged: (v) => dateRegController.text = v,
                    decoration: InputDecoration(
                      labelText: 'Register Date',
                    )),
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: TextField(
                    controller: fleetLoctController,
                    onChanged: (v) => fleetLoctController.text = v,
                    decoration: InputDecoration(
                      labelText: 'Fleet Location',
                    )),
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: TextField(
                    controller: fleetStatusController,
                    onChanged: (v) => fleetStatusController.text = v,
                    decoration: InputDecoration(
                      labelText: 'Fleet Status',
                    )),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Builder(
                  builder: (context) {
                  return ElevatedButton(
                  onPressed: () => print('SAVE'),
                  child: Text('REGISTER'),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

