import 'package:flutter/material.dart';
import 'domain/workout.dart';

void main() => runApp(MaxFitApp());

class MaxFitApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Max Fitness',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(50, 65, 85, 1),
        textTheme: TextTheme(
          subtitle1: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  // const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          title: Text('MaxFit'),
          leading: Icon(Icons.fitness_center),
        ),
        body: WorkoutsList(),
      ),
    );
  }
}

class WorkoutsList extends StatelessWidget {
  // const HomePage({Key key}) : super(key: key);

  final workouts = <Workout>[
    Workout(
        author: 'Max1',
        description: 'Test workout1',
        level: 'Beginner',
        title: 'Test1'),
    Workout(
        author: 'Max2',
        description: 'Test workout2',
        level: 'Intermediate',
        title: 'Test2'),
    Workout(
        author: 'Max3',
        description: 'Test workout3',
        level: 'Advanced',
        title: 'Test3'),
    Workout(
        author: 'Max4',
        description: 'Test workout4',
        level: 'Beginner',
        title: 'Test4'),
    Workout(
        author: 'Max5',
        description: 'Test workout5',
        level: 'Intermediate',
        title: 'Test5'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: workouts.length,
        itemBuilder: (context, i) {
          return Card(
            elevation: 2.0,
            margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Container(
              decoration: BoxDecoration(color: Color.fromRGBO(50, 65, 85, 0.9)),
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                leading: Container(
                  padding: EdgeInsets.only(right: 12),
                  child: Icon(Icons.fitness_center, color: Theme.of(context).textTheme.subtitle1!.color,),
                ),
                title: Text(
                  workouts[i].title,
                  style: TextStyle(
                    color: Theme.of(context).textTheme.subtitle1!.color,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
