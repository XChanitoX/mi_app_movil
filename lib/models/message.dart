class Message {
  final String id;
  final String senderId;
  final String receiverId;
  final String content;
  final DateTime timestamp;
  final bool isRead;
  final MessageType type;

  const Message({
    required this.id,
    required this.senderId,
    required this.receiverId,
    required this.content,
    required this.timestamp,
    this.isRead = false,
    this.type = MessageType.text,
  });

  bool get isFromCurrentUser => senderId == 'current_user';

  static final List<Message> mockMessages = [
    Message(
      id: '1',
      senderId: '1',
      receiverId: 'current_user',
      content: '¡Hola! ¿Cómo estás hoy?',
      timestamp: DateTime.now(),
      isRead: true,
    ),
    Message(
      id: '2',
      senderId: 'current_user',
      receiverId: '1',
      content: '¡Muy bien! ¿Y tú cómo has estado?',
      timestamp: DateTime.now(),
      isRead: true,
    ),
    Message(
      id: '3',
      senderId: '1',
      receiverId: 'current_user',
      content: 'Excelente, trabajando en algunos proyectos nuevos 🚀',
      timestamp: DateTime.now(),
      isRead: false,
    ),
    Message(
      id: '4',
      senderId: '2',
      receiverId: 'current_user',
      content: '¿Tienes tiempo para una llamada rápida?',
      timestamp: DateTime.now(),
      isRead: false,
    ),
    Message(
      id: '5',
      senderId: 'current_user',
      receiverId: '2',
      content: 'Claro, cuando gustes',
      timestamp: DateTime.now(),
      isRead: true,
    ),
  ];

  static List<Message> getMessagesForUser(String userId) {
    return mockMessages.where((message) => 
      message.senderId == userId || message.receiverId == userId
    ).toList();
  }
}

enum MessageType {
  text,
  image,
  file,
}