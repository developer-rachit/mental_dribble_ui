import 'package:flutter/material.dart';
import 'package:mental_dribble_ui/utils/emoticons.dart';
import 'package:mental_dribble_ui/utils/exercise_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
      ]),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                //greeting row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi Rachit!',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8),
                        Text(
                          '01 September, 2022',
                          style: TextStyle(color: Colors.blue[100]),
                        )
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(12)),
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),

                SizedBox(height: 25),

                //search bar

                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Search',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),

                // how do you feel

                SizedBox(height: 25),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'How do you feel?',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    ),
                  ],
                ),

                // 4 faces
                SizedBox(height: 25),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Emoticons(
                          emoticons: "😔",
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Bad',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Emoticons(
                          emoticons: "🙂",
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Free',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Emoticons(
                          emoticons: "😀",
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Well',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Emoticons(
                          emoticons: "😇",
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Excellent',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(height: 25),

          // Exercise
          Expanded(
              child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              color: Colors.grey[100],
            ),
            padding: EdgeInsets.all(25),
            child: Center(
              child: Column(
                children: [
                  // Exercise heading
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Exercises',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.more_horiz),
                    ],
                  ),

                  SizedBox(height: 20),

                  //listview of exercises
                  Expanded(
                    child: ListView(
                      children: [
                        ExerciseTile(
                          icon: Icons.favorite,
                          exerciseName: 'Speaking Skills',
                          numberOfExercises: 10,
                          color: Colors.orange,
                        ),
                        ExerciseTile(
                          icon: Icons.book,
                          exerciseName: 'Reading Skills',
                          numberOfExercises: 13,
                          color: Colors.green,
                        ),
                        ExerciseTile(
                          icon: Icons.type_specimen,
                          exerciseName: 'Writing Skills',
                          numberOfExercises: 7,
                          color: Colors.pink,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ))
        ],
      )),
    );
  }
}
