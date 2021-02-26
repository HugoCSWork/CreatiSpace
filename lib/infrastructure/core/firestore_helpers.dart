import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:creatispace/domain/auth/i_auth_facade.dart';
import 'package:creatispace/domain/core/errors.dart';
import 'package:creatispace/injection.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance
        .collection('users')
        .doc(user.id.getOrCrash());
  }

  Future<DocumentReference> peerDocument(String id) async {
    return FirebaseFirestore.instance
        .collection('users')
        .doc(id);
  }


  Future<DocumentReference> userDocumentMessage(String id) async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance
        .collection('users')
        .doc(user.id.getOrCrash())
        .collection('messages')
        .doc(id);
  }

  Future<bool> isUserVerified(String id) async {
    var user = (await FirebaseFirestore.instance
        .collection('users')
        .doc(id)
        .get()).data();

    return user["seller"].toString() == 'true';
  }

  Future<bool> isPaymentAccountSetup(String id) async {
    var user = (await FirebaseFirestore.instance
        .collection('users')
        .doc(id)
        .get()).data();

    return user["paymentVerified"].toString() == 'true';
  }

  Future<String> userDocumentName(String id) async {
    var user = (await FirebaseFirestore.instance
        .collection('users')
        .doc(id)
        .get()).data();

    return user["username"].toString();

  }

  Future<int> getFollowers(String id) async {
    var user = (await FirebaseFirestore.instance
        .collection('users')
        .doc(id)
        .get()).data();

    return int.parse(user["followers"].toString());
  }

  Future<int> getFollowing(String id) async {
    var user = (await FirebaseFirestore.instance
        .collection('users')
        .doc(id)
        .get()).data();

    return int.parse(user["following"].toString());
  }

  Future<int> getPostTimestamp(String id) async {
    var user = (await FirebaseFirestore.instance
        .collection('users')
        .doc(id)
        .get()).data();

    return int.parse(user["following"].toString());
  }

  Future<String> userDocumentProfileImage(String id) async {
    var user = (await FirebaseFirestore.instance
        .collection('users')
        .doc(id)
        .get()).data();

    return user["profileImageURL"].toString();

  }

  Future<DocumentReference> peerDocumentMessage(String id) async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance
        .collection('users')
        .doc(id)
        .collection('messages')
        .doc(user.id.getOrCrash());
  }


  // Messages check if document is empty for updates
  Future<bool> checkIfEmptyDocumentForMessages(DocumentReference reference) async {
    var options = (await reference.get()).data();

    if(options == null || options["lastSeen"] == null ||
        options["lastMessage"] == null || options["unreadMessages"] == null ||
        options["userMessagingName"] == null) {
      return true;
    }
    return false;
  }

  // Update Files in database
  Future<void> updatedDocumentsInFirebase(DocumentReference ref,
      Map<String, dynamic> items) async {
    await ref.set(items);
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get userCollection => collection('users');
  CollectionReference get itemCollection => collection('items');
  CollectionReference get paymentCollection => collection('payment_account');
  CollectionReference get paymentSendingOrders => collection('sending_orders');
  CollectionReference get paymentReceivingOrders => collection('receiving_orders');
  CollectionReference get homeItemCollection => collection('home');
  CollectionReference get UserMessagesCollection => collection('messages');
  CollectionReference get UserFollowingCollection => collection('following');
  CollectionReference get UserFollowersCollection => collection('followers');
  CollectionReference get UserMessagesConversationCollection => collection('conversation');
}

