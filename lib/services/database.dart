import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods
{
  Future addUserInfoToDB(
  String userId, Map<String, dynamic> userInfoMap) async {
  return FirebaseFirestore.instance
      .collection("users")
      .doc(userId)
      .set(userInfoMap);
  }

  // searching a user
  Future<Stream<QuerySnapshot>> getUserByUserName(String username) async {
    return FirebaseFirestore.instance
        .collection("users")
        .where("username", isEqualTo: username)
        .snapshots();
  }

  // adding a message
  Future addMessage(
      String chatRoomId, String messageId, Map<String, dynamic> messageInfoMap) async {
    return FirebaseFirestore.instance
        .collection("chatrooms")
        .doc(chatRoomId)
        .collection("chats")
        .doc(messageId)
        .set(messageInfoMap);
  }

  // updating the last sent message
  updateLastMessageSend(String chatRoomId, Map<Object, Object?> lastMessageInfoMap) {
    return FirebaseFirestore.instance
        .collection("chatrooms")
        .doc(chatRoomId)
        .update(lastMessageInfoMap);
  }

}
