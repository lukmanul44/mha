import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class MentalHealthAssistanceFirebaseUser {
  MentalHealthAssistanceFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

MentalHealthAssistanceFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<MentalHealthAssistanceFirebaseUser>
    mentalHealthAssistanceFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<MentalHealthAssistanceFirebaseUser>(
            (user) => currentUser = MentalHealthAssistanceFirebaseUser(user));
