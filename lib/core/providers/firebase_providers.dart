import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';

// Firebase Handlers

class FirenaseHandlers {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final FirebaseAuth auth = FirebaseAuth.instance;
  final Reference storage = FirebaseStorage.instance.ref();
}

// User handlers
final GoogleSignIn googleSignIn = GoogleSignIn();
