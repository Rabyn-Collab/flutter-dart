import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm/core/firebase_providers/firebase_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


part 'auth_service.g.dart';



class AuthService {
  final FirebaseAuth firebaseAuth;

AuthService(this.firebaseAuth);

  Future<void> loginUser({required String email, required String password}) async{
     try{
       await firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
     } on FirebaseAuthException catch(err){
      throw '${err.message}';
     }
  }


  Future<void> registerUser({required String email, required String password}) async{
    try{
      await firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch(err){
      throw '${err.message}';
    }
  }

  Future<void> logoutUser() async{
    try{
      await firebaseAuth.signOut();
    } on FirebaseAuthException catch(err){
      throw '${err.message}';
    }
  }
}


@riverpod
AuthService authService(Ref ref) {
  return AuthService(ref.watch(firebaseAuthProvider));
}