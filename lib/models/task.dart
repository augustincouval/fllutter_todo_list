class Task {
  int? _id;
  DateTime? _createdAt;
  String _content;
  bool _completed = false;

  Task(this._id, this._content, this._completed){
    this._createdAt = DateTime.now();
  }

  int? get id {
    return this._id;
  }

  bool get completed => _completed;
  String get content => _content;


  set completed(bool value){
    _completed = value;
  }

  @override
  String toString() {
    return 'Task{_id: $_id, _createdAt: $_createdAt, _content: $_content, _completed: $_completed}';
  }


}