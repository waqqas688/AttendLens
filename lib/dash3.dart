import 'package:flutter/material.dart';

class ToDo extends StatefulWidget {
  @override
  _ToDoState createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {
  List<String> tasks = [];

  final TextEditingController _textController = TextEditingController();

  void addTask(String task) {
    setState(() {
      tasks.add(task);
      _textController.clear();
    });
  }

  void deleteCompletedTasks() {
    setState(() {
      tasks.removeWhere((task) => task.startsWith('✓ '));
    });
  }

  void toggleTask(int index) {
    setState(() {
      String task = tasks[index];
      if (task.startsWith('✓ ')) {
        tasks[index] = task.substring(2);
      } else {
        tasks[index] = '✓ ' + task;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: EdgeInsets.all(20),
            height: 162,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFFD2BD83),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          Container(
            margin: EdgeInsets.all(16),
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFFD2BD83),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: TextField(
                          controller: _textController,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            hintText: 'Add new task',
                            hintStyle: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                            ),
                            border: InputBorder.none,
                          ),
                          onSubmitted: addTask,
                        ),
                      ),
                      IconButton(
                        onPressed: () => addTask(_textController.text),
                        icon: Icon(Icons.add),
                        color: Colors.white,
                      ),
                      IconButton(
                        onPressed: deleteCompletedTasks,
                        icon: Icon(Icons.delete),
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Scrollbar(
                    thickness: 6,
                    radius: Radius.circular(6),
                    child: ListView.builder(
                      padding:
                          EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                      itemCount: tasks.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.symmetric(vertical: 4),
                          child: Row(
                            children: [
                              Checkbox(
                                value: tasks[index].startsWith('✓ '),
                                onChanged: (value) => toggleTask(index),
                                activeColor: Colors.white,
                              ),
                              Expanded(
                                child: Text(
                                  tasks[index],
                                  style: TextStyle(
                                    color: Colors.white,
                                    decoration: tasks[index].startsWith('✓ ')
                                        ? TextDecoration.lineThrough
                                        : TextDecoration.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
