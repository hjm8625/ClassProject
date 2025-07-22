import 'package:flutter_application_techno_1/models/todo_demo1.dart';

class TodoDefault {
  List<Todo> dummyTodos = [
    Todo(
      id: 1,
      title: '13시 광화문역 회의',
      description: '거래처 직원과 미팅',
      play: false,
      date: DateTime(2025, 7, 5),
    ),
    Todo(
      id: 1,
      title: '16시 한양대 팀회의',
      description: '백남 1층에서 프로젝트 회의',
      play: false,
      date: DateTime(2025, 7, 7),
    ),
    Todo(
      id: 1,
      title: '9:00 회사 출근',
      description: '제2공학관 209호',
      play: false,
      date: DateTime(2025, 7, 11),
    ),
    Todo(
      id: 2,
      title: '13:00 광화문역 회의',
      description: '테크노경영 비즈니스 미팅',
      play: false,
      date: DateTime(2025, 7, 11),
    ),
    Todo(
      id: 3,
      title: '19:30 헬스장 운동',
      description: '상체하는 날',
      play: false,
      date: DateTime(2025, 7, 11),
    ),    
    Todo(
      id: 4,
      title: '13:00 회사 출근',
      description: '12층 회의실',
      play: false,
      date: DateTime(2025, 7, 12),
    ),

    Todo(
      id: 6,
      title: '18:00 왕십리 저녁',
      description: '삼겹삽',
      play: false,
      date: DateTime(2025, 7, 12),
    ),    

  ];

  /// 특정 날짜의 할 일만 가져오기
  List<Todo> getTodosByDate(DateTime date) {
    return dummyTodos.where((todo) =>
      todo.date.year == date.year &&
      todo.date.month == date.month &&
      todo.date.day == date.day
    ).toList();
  }

  /// 특정 날짜에 할 일 추가하기
  Todo addTodo(DateTime date, Todo todo) {
    final newTodo = Todo(
      id: DateTime.now().millisecondsSinceEpoch, // 고유한 ID 생성
      title: todo.title,
      description: todo.description,
      play: false,
      date: date,
    );
    dummyTodos.add(newTodo);
    return newTodo;
  }

  /// 특정 날짜에 특정 ID의 할 일 삭제하기
  void deleteTodo(DateTime date, int id) {
    dummyTodos.removeWhere((todo) =>
      todo.id == id &&
      todo.date.year == date.year &&
      todo.date.month == date.month &&
      todo.date.day == date.day);
  }

  /// 특정 날짜에 특정 할 일 수정하기
  void updateTodo(DateTime date, Todo updatedTodo) {
    for (int i = 0; i < dummyTodos.length; i++) {
      final todo = dummyTodos[i];
      if (todo.id == updatedTodo.id &&
          todo.date.year == date.year &&
          todo.date.month == date.month &&
          todo.date.day == date.day) {
        dummyTodos[i] = updatedTodo;
        break;
      }
    }
  }
}
