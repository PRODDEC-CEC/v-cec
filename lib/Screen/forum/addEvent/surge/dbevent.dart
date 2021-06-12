import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uuid/uuid.dart';


class EventService{
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  String ref = 'eSurge';


    void uploadDetails({String eventName,String details, String date, String image,String link1,String link2,String button1,String button2 }){
      var id =Uuid();
      String pEventId = id.v1();
  _firestore.collection(ref).doc(pEventId).set({
    'name' : eventName,
    'id' : pEventId,
    'details' : details,
    'date' : date,
    'image' : image,
    'link1' : link1,
    'link2' : link2,
    'button1': button1,
    'button2': button2
  });
  
    }
}