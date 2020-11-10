import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uuid/uuid.dart';


class EventService{
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  String ref = 'eNotification';


    void uploadDetails({String id,String title,String details, String link1, String link2, String link3,String image, String button1, String button2,String button3 }){
      var id =Uuid();
      String pEventId = id.v1();
  _firestore.collection(ref).doc(pEventId).set({
    'title' : title,
    'id' : pEventId,
    'details' : details,
    'link1' : link1,
    'link2' : link2,
    'link3' : link3,
    'button1':button1,
    'button2':button2,
    'button3':button3,
    'image' : image
  });
  
    }
}