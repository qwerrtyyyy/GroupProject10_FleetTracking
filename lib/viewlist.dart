import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fleet/register.dart';
import 'package:flutter/material.dart';


class ViewList extends StatefulWidget {
  const ViewList({Key? key,}) : super(key: key);

  @override
  State<ViewList> createState() => _ViewListState();
}

class _ViewListState extends State<ViewList> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white, 
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_outlined,
              size: 20,
              color: Colors.black,
            ),
        ),


           actions: [
            PopupMenuButton<int>(
              icon: Icon(
                Icons.more_horiz,
                size: 20,
                color: Colors.black,),
              itemBuilder: (context) => [
                // PopupMenuItem 1
                PopupMenuItem( 
                  value: 1,
                  // row with 2 children
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text("Delete")
                    ],
                  ),
                ),
                // PopupMenuItem 2
                PopupMenuItem(
                  value: 2,
                  // row with two children
                  child: Row(  
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text("Change")
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 3,
                  child: Row(  
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text("New Fleet")
                    ],
                  ),
                  onTap: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                          Navigator.push(context, 
                          MaterialPageRoute(
                            builder: (context) => const registerFleet()
                ),
                );
                    });
                }
                  
                ),
                
              ],
            ),
           ]
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          "\nFleet List",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        /*StreamBuilder<QuerySnapshot>(
                          stream: FirebaseFirestore.instance.collection("fleet").snapshots(),
                          builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
                            if(snapshot.hasData){
                              final snap = snapshot.data!.docs;
                              return ListView.builder(
                                shrinkWrap: true,
                                primary: false,
                                itemCount: snap.length,
                                itemBuilder: (context, index) {
                                  return Text(
                                    snap[index]["fleetNumber"] + " " + 
                                    snap[index]["fleetName"] + " " +
                                    snap[index]["registerDate"] + " " +
                                    snap[index]["fleetLocation"] + " " +
                                    snap[index]["fleetStatus"]
                                  );
                                },
                              );
                          
                          } else{
                            return const SizedBox();
                           }
                          },
                        ),*/
                        ]
                  ),],
            ),]
        ),
      ),
      ),
      ),
      );
    
  }
}
