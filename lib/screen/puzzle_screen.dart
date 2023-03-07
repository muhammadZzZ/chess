// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_stateless_chessboard/flutter_stateless_chessboard.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

import 'package:echessapp/Widgets/repeated_widgets.dart';

import '../Puzzle/chess.dart';
import '../Utils/constrant.dart';

class PuzzleSolveScreen extends StatefulWidget {
  String puzzle;
  String rePuzzle;
  final int puzzleNumber;
  bool? isWhiteToMove;
  List solution;
  String description;
  PuzzleSolveScreen({
    Key? key,
    required this.puzzle,
    required this.rePuzzle,
    required this.puzzleNumber,
    this.isWhiteToMove,
    required this.solution,
    required this.description,
  }) : super(key: key);

  @override
  State<PuzzleSolveScreen> createState() => _PuzzleSolveScreenState();
}

class _PuzzleSolveScreenState extends State<PuzzleSolveScreen> {

  late bool flag=false;

  int turn=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: 
          IconButton(
            onPressed: ()=> Get.back(), 
            icon: Icon(LineAwesomeIcons.arrow_left,color: PrimaryColor,size: 30,)),
      
      ),
      body: Column(
        children: [
          Space(spaceH: 50,),
          Text(widget.isWhiteToMove ?? false ?  "Find the best move for White":"Find the best move for Black",style: TextStyle(fontSize: 25),),
          Space(spaceH: 50,),
          Center(
            child:Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2),
                boxShadow: [
                   BoxShadow(
                      color: Colors.black.withOpacity(.5),
                      blurRadius: 20,
                      //spreadRadius: 2,
                      //offset: Offset(5,5)
                    ),
                ]
              ),
              child: Chessboard(
               fen: widget.puzzle,
                   onMove: (move) {
                //debugPrint("${move.from} hh ${move.to}");
                  List<dynamic> solutions =widget.solution;
                  var nextFen = makeMove(widget.puzzle, {
                    'from': move.from,
                    'to': move.to,
                    'promotion': 'q',
                  });
                  if (nextFen != null) {
                    setState(() {
                      widget.puzzle = nextFen;
                    });
                  }
            
                if (solutions.length == 1) {
                   if (move.to == solutions[0][1] &&
                       move.from == solutions[0][0]) {
                     // solved = true;
                     showDialogSuccess(
                       sORw: 'success',
                       title: 'Well Done',
                       description:
                           'you made best move here may be there are some good moves as well but only best move considered',
                     ); 
                     } else {
                     if (nextFen != null) {
                       showDialogWrong(
                         sORw: 'wrong',
                         title: 'Mistake',
                         description:
                             'may be your move is not bad  but only best move considered here ',
                       );
                     }
                   }
                   // alert dialog to say success
                }
                if (solutions.length == 3) {
                                        switch (turn) {
                                          case 0:
                                            if (move.to == solutions[0][1] &&
                                                move.from == solutions[0][0]) {
                                              var nextFenn = makeMoveBot(
                                                  widget.puzzle, solutions[1]);
            
                                              if (nextFenn != null) {
                                                setState(() {
                                                  widget.puzzle = nextFenn;
            
                                                  turn++;
                                                });
                                              }
                                            } else {
                                              if (nextFen != null) {
                                                showDialogWrong(
                                                  sORw: 'wrong',
                                                  title: 'Mistake',
                                                  description:
                                                      'may be your move is not bad  but only best move considered here ',
                                                );
                                              }
                                            }
                                            break;
                                          case 1:
                                            if (move.to == solutions[2][1] &&
                                                move.from == solutions[2][0]) {
                                             
                                              showDialogSuccess(
                                                sORw: 'success',
                                                title: 'Well Done',
                                                description:
                                                    'you made best move here may be there are some good moves as well but only best move considered',
                                              );
                                            
                                            } else {
                                              if (nextFen != null) {
                                                showDialogWrong(
                                                  sORw: 'wrong',
                                                  title: 'Mistake',
                                                  description:
                                                      'may be your move is not bad  but only best move considered here ',
                                                );
                                              }
                                            }
                                            break;
            
                                          default:
                                        }
                                      }
            
            
                if (solutions.length == 5) {
                                        switch (turn) {
                                          case 0:
                                            if (move.to == solutions[0][1] &&
                                                move.from == solutions[0][0]) {
                                              var nextFenn = makeMoveBot(
                                                  widget.puzzle, solutions[1]);
            
                                              if (nextFenn != null) {
                                                setState(() {
                                                  widget.puzzle = nextFenn;
            
                                                  turn++;
                                                });
                                              }
                                            } else {
                                              if (nextFen != null) {
                                                showDialogWrong(
                                                  sORw: 'wrong',
                                                  title: 'Mistake',
                                                  description:
                                                      'may be your move is not bad  but only best move considered here ',
                                                );
                                              }
                                            }
                                            break;
            
                                          case 1:
                                            if (move.to == solutions[2][1] &&
                                                move.from == solutions[2][0]) {
                                              var nextFenn = makeMoveBot(
                                                  widget.puzzle, solutions[3]);
            
                                              if (nextFenn != null) {
                                                setState(() {
                                                  widget.puzzle = nextFenn;
            
                                                  turn++;
                                                });
                                              }
                                            } else {
                                              if (nextFen != null) {
                                            
                                                showDialogWrong(
                                                  sORw: 'wrong',
                                                  title: 'Mistake',
                                                  description:
                                                      'may be your move is not bad  but only best move considered here ',
                                                );
                                              }
                                            }
                                            break;
                                          case 2:
                                            if (move.to == solutions[4][1] &&
                                                move.from == solutions[4][0]) {
                                              
                                              showDialogSuccess(
                                                sORw: 'success',
                                                title: 'Well Done',
                                                description:
                                                    'you made best move here may be there are some good moves as well but only best move considered',
                                              );
                                              
                                            } else {
                                              if (nextFen != null) {
                                          
                                                showDialogWrong(
                                                  sORw: 'wrong',
                                                  title: 'Mistake',
                                                  description:
                                                      'may be your move is not bad  but only best move considered here ',
                                                );
                                              }
                                            }
                                            break;
            
                                          default:
                                        }
                }
                if (solutions.length == 7) {
                                        switch (turn) {
                                          case 0:
                                            if (move.to == solutions[0][1] &&
                                                move.from == solutions[0][0]) {
                                              var nextFenn = makeMoveBot(
                                                  widget.puzzle, solutions[1]);
            
                                              if (nextFenn != null) {
                                                setState(() {
                                                  widget.puzzle = nextFenn;
            
                                                  turn++;
                                                });
                                              }
                                            } else {
                                              if (nextFen != null) {
                                               
                                                showDialogWrong(
                                                  sORw: 'wrong',
                                                  title: 'Mistake',
                                                  description:
                                                      'may be your move is not bad  but only best move considered here ',
                                                );
                                              }
                                            }
                                            break;
            
                                          case 1:
                                            if (move.to == solutions[2][1] &&
                                                move.from == solutions[2][0]) {
                                              var nextFenn = makeMoveBot(
                                                  widget.puzzle, solutions[3]);
            
                                              if (nextFenn != null) {
                                                setState(() {
                                                  widget.puzzle = nextFenn;
            
                                                  turn++;
                                                });
                                              }
                                            } else {
                                              if (nextFen != null) {
                                               
                                                showDialogWrong(
                                                  sORw: 'wrong',
                                                  title: 'Mistake',
                                                  description:
                                                      'may be your move is not bad  but only best move considered here ',
                                                );
                                              }
                                            }
                                            break;
                                          case 2:
                                            if (move.to == solutions[4][1] &&
                                                move.from == solutions[4][0]) {
                                              var nextFenn = makeMoveBot(
                                                  widget.puzzle, solutions[5]);
            
                                              if (nextFenn != null) {
                                                setState(() {
                                                  widget.puzzle = nextFenn;
            
                                                  turn++;
                                                });
                                              }
                                            } else {
                                              if (nextFen != null) {
                                                
                                                showDialogWrong(
                                                  sORw: 'wrong',
                                                  title: 'Mistake',
                                                  description:
                                                      'may be your move is not bad  but only best move considered here ',
                                                );
                                              }
                                            }
                                            break;
                                          case 3:
                                            if (move.to == solutions[6][1] &&
                                                move.from == solutions[6][0]) {
                                              
                                              showDialogSuccess(
                                                sORw: 'success',
                                                title: 'Well Done',
                                                description:
                                                    'you made best move here may be there are some good moves as well but only best move considered',
                                              );
                                             
                                            } else {
                                              if (nextFen != null) {
                                                
                                                showDialogWrong(
                                                  sORw: 'wrong',
                                                  title: 'Mistake',
                                                  description:
                                                      'may be your move is not bad  but only best move considered here ',
                                                );
                                              }
                                            }
                                            break;
            
                                          default:
                                        }
                                      }
            
               },
                orientation:widget.isWhiteToMove ?? false ?  Color.WHITE : Color.BLACK, size: gWidth*.95,
                lightSquareColor: PrimaryColor,  
                darkSquareColor: SecondaryColor,     
            ),
            )
          ),
          Space(spaceH: 40,),
          //TODO:hint button
          SizedBox(
            width: gWidth*.75,
            child: ElevatedButton(
               style: ElevatedButton.styleFrom(
                 backgroundColor: PrimaryColor,
                 side: BorderSide.none,
                 shape: const StadiumBorder(),
                  ),
               child: Text("Hint",style: TextStyle(fontSize: 20),),
               onPressed: () {
                 setState(() {
                   flag=true;
                 });
               },
            ),
          ),
          Space(spaceH: 10,),
          Container(
            width: gWidth/1.4,
            height: 75,
            //color: Colors.red,
            child:flag ? Text(widget.description,style: TextStyle(fontSize: 15),): Text(""),
          ),
          
        ],
      ),
    );
  }

  showDialogSuccess({sORw, title, description}) {
    QuickAlert.show(
     context: context,
     type: QuickAlertType.success,
     text: title,
     title: sORw,
     confirmBtnColor: Colors.white,
     confirmBtnTextStyle: TextStyle(color:DialogColor),
     onConfirmBtnTap: () {
      setState(() {
        widget.puzzle = widget.rePuzzle;
        Get.back();
      });
       //Navigator.pop(context);
     },
     //barrierColor: PrimaryColor
      );
    }

  // showDialogSuccess({sORw, title, description}) {
  //   showDialog(
  //       barrierDismissible: false,
  //       context: context,
  //       builder: (_) =>AlertDialog(
  //         title: Text("Your men"),

  //        ), 
  //       );
  //   }

  showDialogWrong({sORw, title, description}) {
      QuickAlert.show(
        context: context,
        type: QuickAlertType.error,
        title: sORw,
        text: "Try again ..",
        onConfirmBtnTap: () {
          setState(() {
            widget.puzzle = widget.rePuzzle;
            turn = 0;
            
            Navigator.pop(context);
          });
        },
        );

}    
}


//   showDialogWrong({sORw, title, description}) {
//     showDialog(
//         barrierDismissible: false,
//         context: context,
//         builder: (_) => AlertDialog(
//           actions: [
//             ElevatedButton(onPressed: () {
//                   setState(() {
//                   widget.puzzle = widget.rePuzzle;
//                   turn = 0;
//                   Navigator.pop(context);
//                 });
//             }, child: Text("Hello am i under the water "))
//           ],
//           title: Text("Your women"),

//         ) 
//       );
//     }

// }  












//{
// SimpleChessBoard(
//     engineThinking: false,
//          fen: widget.puzzle,

//        onMove: ({required move}) async{
//           //debugPrint("${move.from} hh ${move.to}");
//             List<dynamic> solutions =widget.solution;
//             var nextFen = makeMove(widget.puzzle, {
//               'from': move.from,
//               'to': move.to,
//               'promotion': 'q',
//             });
//             if (nextFen != null) {
//               setState(() {
//                 widget.puzzle = nextFen;
//               });
//             }

//           if (solutions.length == 1) {
//              if (move.to == solutions[0][1] &&
//                  move.from == solutions[0][0]) {
//                // solved = true;
//                showDialogSuccess(
//                  sORw: 'success',
//                  title: 'Well Done',
//                  description:
//                      'you made best move here may be there are some good moves as well but only best move considered',
//                ); 
//                } else {
//                if (nextFen != null) {
//                  showDialogWrong(
//                    sORw: 'wrong',
//                    title: 'Mistake',
//                    description:
//                        'may be your move is not bad  but only best move considered here ',
//                  );
//                }
//              }
//              // alert dialog to say success
//           }
//           if (solutions.length == 3) {
//                                   switch (turn) {
//                                     case 0:
//                                       if (move.to == solutions[0][1] &&
//                                           move.from == solutions[0][0]) {
//                                         var nextFenn = makeMoveBot(
//                                             widget.puzzle, solutions[1]);

//                                         if (nextFenn != null) {
//                                           setState(() {
//                                             widget.puzzle = nextFenn;

//                                             turn++;
//                                           });
//                                         }
//                                       } else {
//                                         if (nextFen != null) {
//                                           showDialogWrong(
//                                             sORw: 'wrong',
//                                             title: 'Mistake',
//                                             description:
//                                                 'may be your move is not bad  but only best move considered here ',
//                                           );
//                                         }
//                                       }
//                                       break;
//                                     case 1:
//                                       if (move.to == solutions[2][1] &&
//                                           move.from == solutions[2][0]) {
                                       
//                                         showDialogSuccess(
//                                           sORw: 'success',
//                                           title: 'Well Done',
//                                           description:
//                                               'you made best move here may be there are some good moves as well but only best move considered',
//                                         );
                                      
//                                       } else {
//                                         if (nextFen != null) {
//                                           showDialogWrong(
//                                             sORw: 'wrong',
//                                             title: 'Mistake',
//                                             description:
//                                                 'may be your move is not bad  but only best move considered here ',
//                                           );
//                                         }
//                                       }
//                                       break;

//                                     default:
//                                   }
//                                 }


//           if (solutions.length == 5) {
//                                   switch (turn) {
//                                     case 0:
//                                       if (move.to == solutions[0][1] &&
//                                           move.from == solutions[0][0]) {
//                                         var nextFenn = makeMoveBot(
//                                             widget.puzzle, solutions[1]);

//                                         if (nextFenn != null) {
//                                           setState(() {
//                                             widget.puzzle = nextFenn;

//                                             turn++;
//                                           });
//                                         }
//                                       } else {
//                                         if (nextFen != null) {
//                                           showDialogWrong(
//                                             sORw: 'wrong',
//                                             title: 'Mistake',
//                                             description:
//                                                 'may be your move is not bad  but only best move considered here ',
//                                           );
//                                         }
//                                       }
//                                       break;

//                                     case 1:
//                                       if (move.to == solutions[2][1] &&
//                                           move.from == solutions[2][0]) {
//                                         var nextFenn = makeMoveBot(
//                                             widget.puzzle, solutions[3]);

//                                         if (nextFenn != null) {
//                                           setState(() {
//                                             widget.puzzle = nextFenn;

//                                             turn++;
//                                           });
//                                         }
//                                       } else {
//                                         if (nextFen != null) {
                                      
//                                           showDialogWrong(
//                                             sORw: 'wrong',
//                                             title: 'Mistake',
//                                             description:
//                                                 'may be your move is not bad  but only best move considered here ',
//                                           );
//                                         }
//                                       }
//                                       break;
//                                     case 2:
//                                       if (move.to == solutions[4][1] &&
//                                           move.from == solutions[4][0]) {
                                        
//                                         showDialogSuccess(
//                                           sORw: 'success',
//                                           title: 'Well Done',
//                                           description:
//                                               'you made best move here may be there are some good moves as well but only best move considered',
//                                         );
                                        
//                                       } else {
//                                         if (nextFen != null) {
                                    
//                                           showDialogWrong(
//                                             sORw: 'wrong',
//                                             title: 'Mistake',
//                                             description:
//                                                 'may be your move is not bad  but only best move considered here ',
//                                           );
//                                         }
//                                       }
//                                       break;

//                                     default:
//                                   }
//           }
//           if (solutions.length == 7) {
//                                   switch (turn) {
//                                     case 0:
//                                       if (move.to == solutions[0][1] &&
//                                           move.from == solutions[0][0]) {
//                                         var nextFenn = makeMoveBot(
//                                             widget.puzzle, solutions[1]);

//                                         if (nextFenn != null) {
//                                           setState(() {
//                                             widget.puzzle = nextFenn;

//                                             turn++;
//                                           });
//                                         }
//                                       } else {
//                                         if (nextFen != null) {
                                         
//                                           showDialogWrong(
//                                             sORw: 'wrong',
//                                             title: 'Mistake',
//                                             description:
//                                                 'may be your move is not bad  but only best move considered here ',
//                                           );
//                                         }
//                                       }
//                                       break;

//                                     case 1:
//                                       if (move.to == solutions[2][1] &&
//                                           move.from == solutions[2][0]) {
//                                         var nextFenn = makeMoveBot(
//                                             widget.puzzle, solutions[3]);

//                                         if (nextFenn != null) {
//                                           setState(() {
//                                             widget.puzzle = nextFenn;

//                                             turn++;
//                                           });
//                                         }
//                                       } else {
//                                         if (nextFen != null) {
                                         
//                                           showDialogWrong(
//                                             sORw: 'wrong',
//                                             title: 'Mistake',
//                                             description:
//                                                 'may be your move is not bad  but only best move considered here ',
//                                           );
//                                         }
//                                       }
//                                       break;
//                                     case 2:
//                                       if (move.to == solutions[4][1] &&
//                                           move.from == solutions[4][0]) {
//                                         var nextFenn = makeMoveBot(
//                                             widget.puzzle, solutions[5]);

//                                         if (nextFenn != null) {
//                                           setState(() {
//                                             widget.puzzle = nextFenn;

//                                             turn++;
//                                           });
//                                         }
//                                       } else {
//                                         if (nextFen != null) {
                                          
//                                           showDialogWrong(
//                                             sORw: 'wrong',
//                                             title: 'Mistake',
//                                             description:
//                                                 'may be your move is not bad  but only best move considered here ',
//                                           );
//                                         }
//                                       }
//                                       break;
//                                     case 3:
//                                       if (move.to == solutions[6][1] &&
//                                           move.from == solutions[6][0]) {
                                        
//                                         showDialogSuccess(
//                                           sORw: 'success',
//                                           title: 'Well Done',
//                                           description:
//                                               'you made best move here may be there are some good moves as well but only best move considered',
//                                         );
                                       
//                                       } else {
//                                         if (nextFen != null) {
                                          
//                                           showDialogWrong(
//                                             sORw: 'wrong',
//                                             title: 'Mistake',
//                                             description:
//                                                 'may be your move is not bad  but only best move considered here ',
//                                           );
//                                         }
//                                       }
//                                       break;

//                                     default:
//                                   }
//                                 }

//          },
//     orientation:widget.isWhiteToMove ?? false ?  BoardColor.white: BoardColor.black,
//     whitePlayerType: PlayerType.human,
//     blackPlayerType: PlayerType.computer,
//     lastMoveToHighlight: BoardArrow(from: 'e2', to: 'e4', color: Colors.blueAccent),
//     onPromote: () async{},
       
// )}