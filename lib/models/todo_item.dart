// Representa uma tarefa no aplicativo
class TodoItem {
  final int? id;
  final String title;
  final bool isCompleted;
  final DateTime createdAt;

  const TodoItem({
    this.id,
    required this.title,
    this.isCompleted = false,
    required this.createdAt,
  });

  // Cria uma cópia do objeto com campos modificados
  // Utilizado para atualizar estado sem mutação direta
  TodoItem copyWith({
    int? id,
    String? title,
    bool? isCompleted,
    DateTime? createdAt,
  }) {
    return TodoItem(
      id: id ?? this.id,
      title: title ?? this.title,
      isCompleted: isCompleted ?? this.isCompleted,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
