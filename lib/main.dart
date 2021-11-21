import 'package:flutter/material.dart';

void main() {
  runApp(const FlutterApp());
}

class FlutterApp extends StatelessWidget {
  const FlutterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool end = false;
  bool turnX = true;
  int filledBoxes = 0;
  List<String> displayElement = ['', '', '', '', '', '', '', '', ''];
  int scoreX = 0;
  int scoreO = 0;
  bool enabled = true;

  //End of the game
  Widget endGame() {
    if (end == true) {
      return Container(
        padding: const EdgeInsets.only(bottom: 140),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.deepOrange),
                onPressed: () {
                  clearBoard();
                  enabled = true;
                },
                child: const Text(
                  'Play Again!',
                  textAlign: TextAlign.start,
                )),
          ],
        ),
      );
    } else {
      return const Text('');
    }
  }

// clear board
  void clearBoard() {
    setState(() {
      end = false;
      for (int i = 0; i < displayElement.length; i++) {
        displayElement[i] = '';
      }
    });
    filledBoxes = 0;
  }

  //When we tap a box(ListTile)
  void tapped(int index) {
    setState(() {
      if (turnX && displayElement[index] == '') {
        displayElement[index] = 'X';
        filledBoxes++;
      } else if (!turnX && displayElement[index] == '') {
        displayElement[index] = 'O';
        filledBoxes++;
      }
      turnX = !turnX;
      checkWinner();
    });
  }

  //Check winner
  void checkWinner() {
    if (displayElement[0] != '' && displayElement[0] == displayElement[1] && displayElement[0] == displayElement[2]) {
      if (displayElement[0] == 'X') {
        scoreX++;
        setState(() {
          for (int i = 0; i < displayElement.length; i++) {
            if (i == 0 || i == 1 || i == 2) {
              displayElement[i] = 'X';
            } else {
              displayElement[i] = '';
            }
          }
        });
      } else if (displayElement[0] == 'O') {
        scoreO++;
        setState(() {
          for (int i = 0; i < displayElement.length; i++) {
            if (i == 0 || i == 1 || i == 2) {
              displayElement[i] = 'O';
            } else {
              displayElement[i] = '';
            }
          }
        });
      }

      end = true;
      enabled = false;
      return;
    } else if (displayElement[3] != '' &&
        displayElement[3] == displayElement[4] &&
        displayElement[3] == displayElement[5]) {
      end = true;
      enabled = false;

      if (displayElement[3] == 'X') {
        scoreX++;
        setState(() {
          for (int i = 0; i < displayElement.length; i++) {
            if (i == 3 || i == 4 || i == 5) {
              displayElement[i] = 'X';
            } else {
              displayElement[i] = '';
            }
          }
        });
      } else if (displayElement[3] == 'O') {
        scoreO++;
        setState(() {
          for (int i = 0; i < displayElement.length; i++) {
            if (i == 3 || i == 4 || i == 5) {
              displayElement[i] = 'O';
            } else {
              displayElement[i] = '';
            }
          }
        });
      }
      return;
    } else if (displayElement[6] != '' &&
        displayElement[6] == displayElement[7] &&
        displayElement[6] == displayElement[8]) {
      end = true;
      enabled = false;

      if (displayElement[6] == 'X') {
        scoreX++;
        setState(() {
          for (int i = 0; i < displayElement.length; i++) {
            if (i == 6 || i == 7 || i == 8) {
              displayElement[i] = 'X';
            } else {
              displayElement[i] = '';
            }
          }
        });
      } else if (displayElement[6] == 'O') {
        scoreO++;
        setState(() {
          for (int i = 0; i < displayElement.length; i++) {
            if (i == 6 || i == 7 || i == 8) {
              displayElement[i] = 'O';
            } else {
              displayElement[i] = '';
            }
          }
        });
      }
      return;
    } else if (displayElement[0] != '' &&
        displayElement[0] == displayElement[3] &&
        displayElement[0] == displayElement[6]) {
      end = true;
      enabled = false;

      if (displayElement[0] == 'X') {
        scoreX++;
        setState(() {
          for (int i = 0; i < displayElement.length; i++) {
            if (i == 0 || i == 3 || i == 6) {
              displayElement[i] = 'X';
            } else {
              displayElement[i] = '';
            }
          }
        });
      } else if (displayElement[0] == 'O') {
        scoreO++;
        setState(() {
          for (int i = 0; i < displayElement.length; i++) {
            if (i == 0 || i == 3 || i == 6) {
              displayElement[i] = 'O';
            } else {
              displayElement[i] = '';
            }
          }
        });
      }
      return;
    } else if (displayElement[1] != '' &&
        displayElement[1] == displayElement[4] &&
        displayElement[1] == displayElement[7]) {
      end = true;
      enabled = false;

      if (displayElement[1] == 'X') {
        scoreX++;
        setState(() {
          for (int i = 0; i < displayElement.length; i++) {
            if (i == 1 || i == 4 || i == 7) {
              displayElement[i] = 'X';
            } else {
              displayElement[i] = '';
            }
          }
        });
      } else if (displayElement[1] == 'O') {
        scoreO++;
        setState(() {
          for (int i = 0; i < displayElement.length; i++) {
            if (i == 1 || i == 4 || i == 7) {
              displayElement[i] = 'O';
            } else {
              displayElement[i] = '';
            }
          }
        });
      }
      return;
    } else if (displayElement[2] != '' &&
        displayElement[2] == displayElement[5] &&
        displayElement[2] == displayElement[8]) {
      end = true;
      enabled = false;

      if (displayElement[2] == 'X') {
        scoreX++;
        setState(() {
          for (int i = 0; i < displayElement.length; i++) {
            if (i == 2 || i == 5 || i == 8) {
              displayElement[i] = 'X';
            } else {
              displayElement[i] = '';
            }
          }
        });
      } else if (displayElement[2] == 'O') {
        scoreO++;
        setState(() {
          for (int i = 0; i < displayElement.length; i++) {
            if (i == 2 || i == 5 || i == 8) {
              displayElement[i] = 'O';
            } else {
              displayElement[i] = '';
            }
          }
        });
      }
      return;
    } else if (displayElement[0] != '' &&
        displayElement[0] == displayElement[4] &&
        displayElement[0] == displayElement[8]) {
      end = true;
      enabled = false;

      if (displayElement[0] == 'X') {
        scoreX++;
        setState(() {
          for (int i = 0; i < displayElement.length; i++) {
            if (i == 0 || i == 4 || i == 8) {
              displayElement[i] = 'X';
            } else {
              displayElement[i] = '';
            }
          }
        });
      } else if (displayElement[0] == 'O') {
        scoreO++;
        setState(() {
          for (int i = 0; i < displayElement.length; i++) {
            if (i == 0 || i == 4 || i == 8) {
              displayElement[i] = 'O';
            } else {
              displayElement[i] = '';
            }
          }
        });
      }
      return;
    } else if (displayElement[2] != '' &&
        displayElement[2] == displayElement[4] &&
        displayElement[2] == displayElement[6]) {
      end = true;
      enabled = false;

      if (displayElement[2] == 'X') {
        scoreX++;
        setState(() {
          for (int i = 0; i < displayElement.length; i++) {
            if (i == 2 || i == 4 || i == 6) {
              displayElement[i] = 'X';
            } else {
              displayElement[i] = '';
            }
          }
        });
      } else if (displayElement[2] == 'O') {
        scoreO++;
        setState(() {
          for (int i = 0; i < displayElement.length; i++) {
            if (i == 2 || i == 4 || i == 6) {
              displayElement[i] = 'O';
            } else {
              displayElement[i] = '';
            }
          }
        });
      }
      return;
    } else if (filledBoxes == 9) {
      end = true;
      enabled = false;
      showDrawDialog();
      return;
    }
  }

  //Draw Dialog
  void showDrawDialog() {
    showDialog(
        barrierDismissible: true,
        context: context,
        builder: (BuildContext context) {
          return const AlertDialog(
            title: Text('Draw'),
          );
        });
  }

  //clear score board
  void clearScoreBoard() {
    setState(() {
      scoreX = 0;
      scoreO = 0;
      for (int i = 0; i < displayElement.length; i++) {
        displayElement[i] = '';
      }
      filledBoxes = 0;
      turnX = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Tic Tac Toe'),
        backgroundColor: Colors.redAccent,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              clearScoreBoard();
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //Score board
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        'Player X',
                        style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        scoreX.toString(),
                        style: const TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        'Player O',
                        style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        scoreO.toString(),
                        style: const TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          //Whose turn is?
          Container(
            child: Text(
              end ? 'Game Over' : (turnX ? 'It is X Turn' : 'It is O turn'),
              style: const TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
            ),
            margin: const EdgeInsets.only(bottom: 16.0),
          ),
          //board game
          Expanded(
            flex: 1,
            child: GridView.builder(
                physics: const ScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: 9,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(style: BorderStyle.solid, color: Colors.black),
                    ),
                    //Tile for inserting X or O
                    child: ListTile(
                      enabled: enabled,
                      tileColor: Colors.white,
                      title: Text(
                        displayElement[index],
                        style:
                            const TextStyle(fontSize: 90, fontWeight: FontWeight.w300, color: Colors.deepOrangeAccent),
                        textAlign: TextAlign.center,
                      ),
                      onTap: () {
                        if (!end) {
                          tapped(index);
                        } else {
                          setState(() {
                            enabled = false;
                          });
                        }
                      },
                    ),
                  );
                }),
          ),
          //End game button-Try Again
          endGame(),
        ],
      ),
    );
  }
}
