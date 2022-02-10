
import 'package:couval_todo_list/models/task.dart';
import 'package:faker/faker.dart';


class Tasks{

  static List<Task> getTasks(){
    var faker = new Faker();
    return List<Task>.generate(15, (int i) => Task(i, faker.food.restaurant(), i%2 == 0 ? true : false) );

  }

}

