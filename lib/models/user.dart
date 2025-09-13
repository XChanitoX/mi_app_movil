class User {
  final String id;
  final String name;
  final String email;
  final String avatar;
  final bool isOnline;
  final DateTime lastSeen;

  const User({
    required this.id,
    required this.name,
    required this.email,
    required this.avatar,
    this.isOnline = false,
    required this.lastSeen,
  });

  static final List<User> mockUsers = [
    User(
      id: '1',
      name: 'Ana García',
      email: 'ana@example.com',
      avatar: '👩🏻‍💼',
      isOnline: true,
      lastSeen: DateTime.now(),
    ),
    User(
      id: '2',
      name: 'Carlos Mendoza',
      email: 'carlos@example.com',
      avatar: '👨🏻‍💻',
      isOnline: false,
      lastSeen: DateTime.now(),
    ),
    User(
      id: '3',
      name: 'María López',
      email: 'maria@example.com',
      avatar: '👩🏻‍🎨',
      isOnline: true,
      lastSeen: DateTime.now(),
    ),
    User(
      id: '4',
      name: 'Diego Rivera',
      email: 'diego@example.com',
      avatar: '👨🏻‍🚀',
      isOnline: false,
      lastSeen: DateTime.now(),
    ),
    User(
      id: '5',
      name: 'Sofia Chen',
      email: 'sofia@example.com',
      avatar: '👩🏻‍🔬',
      isOnline: true,
      lastSeen: DateTime.now(),
    ),
  ];
}