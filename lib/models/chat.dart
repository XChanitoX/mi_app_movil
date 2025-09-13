import 'user.dart';
import 'message.dart';

class Chat {
  final String id;
  final User user;
  final Message? lastMessage;
  final int unreadCount;

  const Chat({
    required this.id,
    required this.user,
    this.lastMessage,
    this.unreadCount = 0,
  });

  static List<Chat> getMockChats() {
    return User.mockUsers.map((user) {
      final messages = Message.getMessagesForUser(user.id);
      final lastMessage = messages.isNotEmpty ? messages.last : null;
      final unreadCount = messages.where((m) => !m.isRead && m.senderId == user.id).length;
      
      return Chat(
        id: user.id,
        user: user,
        lastMessage: lastMessage,
        unreadCount: unreadCount,
      );
    }).toList();
  }
}