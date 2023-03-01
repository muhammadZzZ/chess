// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'package:echessapp/screen/puzzle_screen.dart';

import '../Utils/constrant.dart';
import '../models/puzzles/chessPuzzle.dart';

class LevelScreen extends StatelessWidget {
 
  LevelScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:20,left: 20,right: 20,bottom: 10),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: gWidth > 650 ? 5 : 4,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: beginnerTactics.length,
              itemBuilder: (context, i) {
                return InkWell(
                  onTap: () => Get.to(()=>PuzzleSolveScreen(
                    isWhiteToMove: beginnerTactics[i].isWhiteToMove,
                    puzzle: beginnerTactics[i].puzzle,rePuzzle: beginnerTactics[i].puzzle, puzzleNumber: i,solution: beginnerTactics[i].solution,)), 
                  child: Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Container(
                            decoration: BoxDecoration(
                                color: PrimaryColor,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(17.0))),
                            height: 50.0,
                            width: 50.0,
                            child: Center(
                                child: Text(
                              (1 + i).toString(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                        )
                );
              },
            ),
          );
  }

    //chess data model (list)
    List<ChessPuzzle> beginnerTactics = [
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '6k1/pbpr1ppp/1p6/8/6n1/1BP5/PPN2PPP/4R1K1 w - - 0 1',
      solution: [
        //this is one move-white
        ['e1', 'e8'],
      ],
      description:
          'Vulnerable first rank. it means blacks 8th rank is weak there is no defender there So blacks king is not safe',
    ),
    

    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '6k1/1p3ppp/r5q1/pp6/2b4P/1BP3Q1/PP3PP1/R5K1 w - - 0 1',
      solution: [
        ['g3', 'b8'],
      ],
      description:
          'Vulnerable first rank. it means blacks 8th rank is weak there is no defender there So blacks king is not safe',
    ),

    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '6k1/R4ppp/1q6/8/8/8/P4PPP/5RK1 w - - 0 1',
      solution: [
        //this is two move 
        //white first
        ['a7', 'a8'],
        //black
        'Qd8',
        ['a8', 'd8'],
      ],
      description:
          'Vulnerable first rank. it means blacks 8th rank is weak there is no defender there So blacks king is not safe',
    ),

    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '6k1/pr3pnp/1p2b1pB/1N6/7P/6P1/PP3PK1/3R4 w - - 0 1',
      solution: [
        ['d1', 'd8'],
        'Ne8',
        ['d8', 'e8'],
      ],
      description:
          'Vulnerable first rank. it means blacks 8th rank is weak there is no defender there So blacks king is not safe',
    ),

    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '6k1/4Rp1p/p1q2Pp1/Pp4P1/1P4KP/8/8/4R3 w - - 0 1',
      solution: [
        ['e7', 'e8'],
        'Qxe8',
        ['e1', 'e8'],
      ],
      description:
          'Vulnerable first rank. it means blacks 8th rank is weak there is no defender there So blacks king is not safe',
    ),

    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'r1bqkbnr/ppp2ppp/2np4/4p3/2B1P3/5Q2/PPPP1PPP/RNB1KBNR w - - 0 1',
      solution: [
        ['f3', 'f7'],
      ],
      description:
          "Napoleon's style checkmate. don't you ever lost with this Style, ok your queen and bishop are making a good team here They both aiming at the best square on this board",
    ),

    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '3r1rk1/bpp2ppp/pq6/8/8/2P4Q/PPB2PPP/3RRK2 w - - 0 1',
      solution: [
        ['h3', 'h7'],
      ],
      description:
          'Your queen and bishop are making a good team here They both aiming at the weakest square on this board',
    ),

    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'r3r1k1/2bp1ppp/1qp5/1p6/pPP3n1/P1QP1N2/1B3PPP/R4RK1 w - - 0 1',
      solution: [
        ['c3', 'g7'],
      ],
      description:
          'Your queen and bishop are making a good team here They both aiming at the weakest square on this board',
    ),

    ChessPuzzle(
      isWhiteToMove: true,
      puzzle:
          'r1bqkb1r/p1p1np2/1pn4p/4p1pN/1B2P3/2N5/PPPQ1PPP/3R1RK1 w - - 0 1',
      solution: [
        ['h5', 'f6'],
      ],
      description: 'Sometimes knights are killer',
    ),

    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'kr5r/pp6/5np1/1N3p2/8/P6P/1P3PP1/2R2RK1 w - - 0 1',
      solution: [
        ['b5', 'c7'],
      ],
      description: 'Sometimes knights are killer',
    ),

    ////////////////////

    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'r3q1k1/p4p1p/1pn3p1/2b5/6N1/2B5/PP3PPP/R2Q2K1 w - - 0 1',
      solution: [
        ['g4', 'f6'],
        'Kf8',
        ['f6', 'e8'],
      ],
      description:
          'knight fork means your knight attack two or more things at the same time and it is Stronger with check',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '8/3k2p1/r1p1r3/1p5P/3K4/PN6/1P6/7R w - - 0 1',
      solution: [
        ['b3', 'c5'],
        'Ke7',
        ['c5', 'a6'],
      ],
      description:
          'knight fork means your knight attack two or more things at the same time and it is Stronger with check',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'k3q3/pp6/8/1N4p1/1P3nP1/KP5P/2Q5/8 w - - 0 1',
      solution: [
        ['b5', 'c7'],
        'Kb8',
        ['c7', 'e8'],
      ],
      description:
          'knight fork means your knight attack two or more things at the same time and it is Stronger with check',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '8/pp4qp/2p5/4k3/8/PP2K3/2P3PP/4B3 w - - 0 1',
      solution: [
        ['e1', 'c3'],
        'Ke6',
        ['c3', 'g7'],
      ],
      description:
          'Skewer. it means is an attack upon two pieces in a line here even tho black has queen but lose the game because of the skewer',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '6r1/1p6/pbp1kp1p/4p3/1P2P2P/P5P1/4BP2/3R1K2 w - - 0 1',
      solution: [
        ['e2', 'c4'],
        'Ke7',
        ['c4', 'g8'],
      ],
      description: 'Skewer. it means is an attack upon two pieces in a line',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '5r2/8/2b2k2/1pb3p1/4P1Bp/1P5P/P2NK3/1R6 w - - 0 1',
      solution: [
        ['b1', 'c1'],
        'Bb4',
        ['c1', 'c6'],
      ],
      description:
          'Skewer. look two bishops are on the same line and no other piece defend them',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'r3r1k1/pp2bpp1/2p1pn1p/8/2Pq4/2NB4/PP1Q1PPP/R3R1K1 w - - 0 1',
      solution: [
        ['d3', 'h7'],
        'Kxh7',
        ['d2', 'd4'],
      ],
      description:
          'Discover Attack. is an attack that is revealed when one piece moves out of the way of another. Here look what if there is no bishop? ans. simply we take blacks queen',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'r4r2/pbpp2bk/1p2p1p1/7p/4NB1P/qP1P1QP1/2P2P2/3RR1K1 w - - 0 1',
      solution: [
        ['e4', 'g5'],
        'Kh8',
        ['f3', 'b7'],
      ],
      description:
          'Discover Attack. is an attack that is revealed when one piece moves out of the way of another. Here look what if there is no knight? ans. Simply we take blacks white squared bishop ',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '2r2rk1/pb2bppp/1p2pn2/6B1/3q3P/P1NB4/1PP1QPP1/R2R3K w - - 0 1',
      solution: [
        ['d3', 'h7'],
        'Kxh7',
        ['d1', 'd4'],
      ],
      description:
          'Discover Attack. is an attack that is revealed when one piece moves out of the way of another. Here look what if there is no white squared bishop? ans. simply we take blacks queen',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '6r1/5p2/r1p1p3/B4p2/RP5k/2R4P/5P2/5K2 w - - 0 1',
      solution: [
        ['b4', 'b5'],
      ],
      description:
          'Discover Attack With Check. is an attack that is revealed when one piece moves out of the way of another with a check. Here look what will happen if you move pawn beside rook? ans. Simply we take blacks rook',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle:
          'r2qkbnr/ppp2ppp/2npb3/4p3/3PP3/2N2N2/PPP2PPP/R1BQKB1R w KQkq - 0 1',
      solution: [
        ['d4', 'd5'],
      ],
      description:
          'Double Attack. is an attack with one move you attack two or more pieces',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle:
          'rnb1r1k1/pp3pbp/2p2np1/1N2p3/2P1P3/5N2/PP2BPPP/R1B2RK1 w Qq - 0 1',
      solution: [
        ['b5', 'c7'],
      ],
      description: 'double attack and also knight fork',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '2r3k1/bp3ppp/p1q5/3N4/8/8/PPPQ1PPP/R3R1K1 w Q - 0 1',
      solution: [
        ['d5', 'e7'],
      ],
      description:
          'There are family forks here in this puzzle it means with one piece you attack many things including the king, queen, rook',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'r5k1/p1b2pp1/1p4n1/2p4p/8/PBQ1NqP1/1P3P1P/5RK1 w q - 0 1',
      solution: [
        ['b3', 'd5'],
      ],
      description: 'double attack with the bishop',
    ),
    ChessPuzzle(
      isWhiteToMove: false,
      puzzle: '4b1k1/1p3pb1/pR4p1/8/5P2/1P3K2/P5P1/6N1 b - - 0 1',
      solution: [
        ['g7', 'd4'],
        'Rxb7',
        ['e8', 'c6'],
      ],
      description: 'double attack with the bishop',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '5r2/1p4pk/5p2/p6p/P3P3/5P2/5KPP/3R4 w - - 0 1',
      solution: [
        ['d1', 'd5'],
        'Kg6',
        ['d5', 'a5'],
      ],
      description:
          'In chess one pawn is so important and make difference so here rook can double attack',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '5bk1/2q2ppp/r1n5/8/8/5N2/1pB2PPP/3QR1K1 w - - 0 1',
      solution: [
        ['d1', 'd3'],
        'g6',
        ['d3', 'a6'],
      ],
      description:
          "this one a little bit tough but it's a very useful position and it happens during games. it is about the double attack with the queen but this time threatening mate and rook",
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'r4rk1/ppq2pp1/3b1n1p/2p5/2P1P3/1Q3N2/PPB3PP/R3R1K1 w - - 0 1',
      solution: [
        ['e4', 'e5'],
      ],
      description: 'Double attack and also pawn forks ',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '8/p3kp2/6p1/b6p/3N4/8/P4PPP/6K1 w - - 0 1',
      solution: [
        ['d4', 'c6'],
        'Kd6',
        ['c6', 'a5'],
      ],
      description: 'Knight forks',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '4rrk1/ppp2pp1/2n4p/q6b/2P5/PP3NBP/1Q3PP1/2RR2K1 w - - 0 1',
      solution: [
        ['d1', 'd5'],
        'Qb6',
        ['d5', 'h5'],
      ],
      description: 'Double attack with rook',
    ),

    ChessPuzzle(
      isWhiteToMove: false,
      puzzle: 'r1q2rk1/pp3ppp/5n2/1B1pp2b/3P4/2P2N1P/PP2QPP1/3RR1K1 b - - 0 1',
      solution: [
        ['e5', 'e4'],
        'g4',
        ['e4', 'f3'],
      ],
      description:
          'Pin. here whites knight diagonally pinned to queen it means when white move his knight he loses his queen so we have to attack the knight in order to take advantage ',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '3r2rk/p4ppp/1p1qp3/8/8/2P2N2/PPQ2PPP/4R1K1 w - - 0 1',
      solution: [
        ['f3', 'g5'],
        'g6',
        ['g5', 'f7'],
      ],
      description:
          'No surprise white will win in only 2 moves thanks for a knight fork',
    ),
    ChessPuzzle(
      isWhiteToMove: false,
      puzzle: 'r2q1r2/ppp2pbk/4b1pp/4p3/1B2P3/3P4/PPP3BP/R1Q1R1K1 b - - 0 1',
      solution: [
        ['d8', 'd4'],
        'Qe3',
        ['d4', 'b4'],
      ],
      description:
          'Double attack with check look at this position whites bishop is undefended and there is an open diagonal to check',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '2kr3r/ppp1qppp/8/8/1nPP2n1/2N5/PP1Q1PPP/RB3RK1 w - - 0 1',
      solution: [
        ['b1', 'f5'],
        'Kb8',
        ['f5', 'g4'],
      ],
      description: 'Skewer and double attack with a bishop',
    ),
    ChessPuzzle(
      isWhiteToMove: false,
      puzzle: 'rnbq1rk1/pp2ppbp/3p1np1/8/3NPB2/2N5/PPP1BPPP/R2Q1RK1 b - - 0 8',
      solution: [
        ['e7', 'e5'],
      ],
      description: 'pawn forks',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '2kr3r/ppp2ppp/8/1n4b1/8/6P1/PPP2PBP/R3RNK1 w - - 0 1',
      solution: [
        ['e1', 'e5']
      ],
      description: 'Skewer and double attack with rook',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '5rk1/rpp2pbp/5np1/2p5/8/2N1B3/PPP2PPP/R4RK1 w - - 0 1',
      solution: [
        ['e3', 'c5']
      ],
      description: 'Skewer and double attack with bishop',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '5rk1/2p3pp/1q6/p7/1p2B3/6QP/PnP2PP1/5RK1 w - - 0 1',
      solution: [
        ['g3', 'b3'],
        'Kh8',
        ['b3', 'b2'],
      ],
      description: 'Use your Queen to eliminate blacks, undefended knight',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '8/4q3/3k4/8/3KP3/4N3/8/8 w - - 0 1',
      solution: [
        ['e3', 'f5'],
      ],
      description: 'Knight forks',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'k4n2/2r5/6P1/6K1/8/4R3/8/8 w - - 0 1',
      solution: [
        ['e3', 'e8'],
      ],
      description: 'check and win something',
    ),

    ChessPuzzle(
      isWhiteToMove: false,
      puzzle:
          'r1bqkb1r/5p1p/p1np1p2/1p2p3/4P3/N1N5/PPP1BPPP/R2QK2R b KQkq - 0 10',
      solution: [
        ['b5', 'b4'],
      ],
      description: 'pawn forks',
    ),
    ChessPuzzle(
      isWhiteToMove: false,
      puzzle: 'r3kb1r/pppq1ppp/2n1p3/8/8/2Q1PNN1/PPP2PPP/R3K2R b KQkq - 0 1',
      solution: [
        ['f8', 'b4'],
        'Qxb4',
        ['c6', 'b4'],
      ],
      description:
          'Queen and the King are on the same diagonal and this is good news for you to take advantage of that pin',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'r4rk1/2p2p1p/1p3p2/8/6bP/PN6/1PPR1P2/2K4R w - - 0 1',
      solution: [
        ['h1', 'g1'],
        'f5',
        ['f2', 'f3'],
      ],
      description:
          'Bishop and the King are on the same file which you can pin the bishop then attack him with pawn',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '2kr3r/ppq2ppp/5p2/8/1P6/PQ6/R4PPP/5RK1 w - - 0 1',
      solution: [
        ['a2', 'c2'],
      ],
      description: 'Queen and the King are on the same file',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '2r2nk1/6p1/7p/7P/2p3n1/2N3P1/5PB1/5RK1 w - - 0 1',
      solution: [
        ['g2', 'h3'],
      ],
      description: 'Pin knight to rook so you can get that knight',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'r3r1k1/5pp1/2p1p1n1/p1n5/8/q2N1PB1/P1P3PP/1R2RQK1 w - - 0 1',
      solution: [
        ['g3', 'd6'],
      ],
      description:
          'Pin the knight to the queen so black can not move the knight and then you can take that knight easily',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '5k2/8/r4n1R/8/4P3/3P1K2/8/8 w - - 0 1',
      solution: [
        ['e4', 'e5'],
        'Kg7',
        ['h6', 'f6'],
      ],
      description:
          'the knight is already pinned to the rook so we have to attack it',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '8/2p3k1/3p4/4n1q1/3R4/5P1P/1B5K/8 w - - 0 1',
      solution: [
        ['d4', 'g4'],
      ],
      description:
          'This one is funny, pin a queen to the king and the knight can not take rook because the knight himself is pinned to the king this puzzle is great to show how strong a pin can be',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'R3b2k/6n1/8/R7/8/1B6/1B4K1/4q3 w - - 0 1',
      solution: [
        ['a5', 'h5'],
      ],
      description:
          'Checkmate in one, this one is even more funnier than the previous one because black has two pieces but none of them are alive',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '6k1/6b1/8/3q4/4N3/4K3/8/6R1 w - - 0 1',
      solution: [
        ['e4', 'f6'],
      ],
      description:
          'Search for the Knight forks and take advantage of the pinned bishop',
    ),

    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '6k1/5ppp/1p6/p7/8/2n3P1/5PK1/5R2 w - - 0 1',
      solution: [
        ['f1', 'c1'],
      ],
      description:
          'This is also pin but a bit weird because you pin the knight to threatening checkmate',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '6k1/3n1p1p/p5pQ/1p6/1Bpq4/P4PP1/1P3PK1/8 w - - 0 1',
      solution: [
        ['b4', 'c3'],
        'Qd6',
        ['h6', 'g7'],
      ],
      description: 'attack queen and suddenly you will be able to checkmate',
    ),
    ChessPuzzle(
      isWhiteToMove: false,
      puzzle: 'rnbqk1nr/pppp1ppp/8/8/1b2P3/1Pp2N2/P4PPP/RNBQKB1R b KQkq - 0 5',
      solution: [
        ['c3', 'c2'],
      ],
      description:
          "Discover check. a check on the opponent's king that is delivered by moving a piece out of the line ",
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'rn1q1r2/ppp1nppk/3b4/3p4/3P2b1/5N2/PPP2PPP/RNBQ1RK1 w - - 0 1',
      solution: [
        ['f3', 'g5'],
        'Kg6',
        ['d1', 'g4'],
      ],
      description:
          'your knight is pinned but thanks for the discover check that will save you and you can get a bishop. the first move is with the knight',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '3q2k1/7p/6p1/8/8/3B4/5PPP/3R2K1 w - - 0 1',
      solution: [
        ['d3', 'c4'],
      ],
      description:
          "Discover check. a check on the opponent's king that is delivered by moving a piece out of the line",
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '7k/2q5/8/2p5/2K5/8/1R3P2/B7 w - - 0 1',
      solution: [
        ['b2', 'b7'],
        'Kg8',
        ['b7', 'c7'],
      ],
      description:
          'What will happen if you move your rook? and where you put that rook?',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '4k3/8/8/4K3/8/2n5/8/4R3 w - - 0 1',
      solution: [
        ['e5', 'd4'],
      ],
      description:
          'what happens if you move your king ? and where you put your king?',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'r1b2rk1/p4pbp/1p2pnp1/2p5/2P1PP2/2N3P1/PP4BP/R1BR2K1 w - - 0 1',
      solution: [
        ['e4', 'e5'],
      ],
      description: 'Double attack and also discover attack by moving a pawn',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '5rk1/5ppp/1b3n2/2p5/8/6P1/1B3P1P/1R4K1 w - - 0 1',
      solution: [
        ['b2', 'f6'],
        {'from': 'g7', 'to': 'f6'},
        ['b1', 'b6'],
      ],
      description:
          "What happens if you don't have a bishop in front of your rook?",
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '8/8/1KP1r1k1/8/R4P1r/8/8/8 w - - 0 1',
      solution: [
        ['f4', 'f5'],
      ],
      description: 'Discover check by moving pawn',
    ),
  ];

}
