import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_personlaity/colors.dart';
import 'package:new_personlaity/custom_button.dart';
import 'package:new_personlaity/resultscreen.dart';
import 'package:new_personlaity/textwidgets.dart';


class QuestionScreen extends StatefulWidget {
  final int questionIndex;
  final int totalScore;

  QuestionScreen({required this.questionIndex, required this.totalScore});

  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  bool _showNextButton = false;
  int _selectedAnswerIndex = -1;
  int _currentScore = 0; // New variable to accumulate the score

  @override
  void initState() {
    super.initState();
    _currentScore = widget.totalScore; // Initialize current score
  }


  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> questions = [
      {
        'questionText': 'How do you feel in social settings?',
        'answers': [
          {'text': 'I enjoy socializing and meeting new people.', 'score': 5},
          {'text': 'I prefer spending time alone or with a small group of close friends.', 'score': 1},
          {'text': 'I feel nervous and uncomfortable.', 'score': 3},
          {'text': 'I feel indifferent.', 'score': 2},
        ],
      },
      {
        'questionText': 'How do you react to new experiences or ideas?',
        'answers': [
          {'text': 'I am curious and eager to try new things.', 'score': 5},
          {'text': 'I prefer sticking to what I know and am comfortable with.', 'score': 1},
          {'text': 'I feel hesitant but open to trying.', 'score': 3},
          {'text': 'I am resistant to change.', 'score': 2},
        ],
      },
      {
        'questionText': 'How organized are you?',
        'answers': [
          {'text': 'I like to plan ahead and keep things in order.', 'score': 5},
          {'text': 'I am more spontaneous and don\'t mind a bit of chaos.', 'score': 1},
          {'text': 'I am somewhat organized.', 'score': 3},
          {'text': 'I am very disorganized.', 'score': 2},
        ],
      },
      {
        'questionText': 'How do you handle stress?',
        'answers': [
          {'text': 'I remain calm and composed under pressure.', 'score': 5},
          {'text': 'I tend to worry a lot and get anxious easily.', 'score': 1},
          {'text': 'I seek support and coping mechanisms.', 'score': 3},
          {'text': 'I become overwhelmed and shut down.', 'score': 2},
        ],
      },
      {
        'questionText': 'How adventurous are you?',
        'answers': [
          {'text': 'I love trying new things and seeking adventures.', 'score': 5},
          {'text': 'I prefer sticking to familiar activities and routines.', 'score': 1},
          {'text': 'I am open to moderate adventures.', 'score': 3},
          {'text': 'I am very risk-averse.', 'score': 2},
        ],
      },
      {
        'questionText': 'How do you handle conflicts?',
        'answers': [
          {'text': 'I try to find a compromise and resolve the issue peacefully.', 'score': 5},
          {'text': 'I avoid conflicts and prefer to keep the peace.', 'score': 1},
          {'text': 'I confront the issue directly and assertively.', 'score': 3},
          {'text': 'I withdraw from conflicts and let others take charge.', 'score': 2},
        ],
      },
      {
        'questionText': 'How do you approach decision-making?',
        'answers': [
          {'text': 'I carefully weigh all options and consider the consequences.', 'score': 5},
          {'text': 'I trust my instincts and make decisions quickly.', 'score': 1},
          {'text': 'I seek advice from others and consider their perspectives.', 'score': 3},
          {'text': 'I struggle to make decisions and often second-guess myself.', 'score': 2},
        ],
      },
      {
        'questionText': 'How do you express your creativity?',
        'answers': [
          {'text': 'I enjoy experimenting with different ideas and artistic mediums.', 'score': 5},
          {'text': 'I prefer to follow established rules and conventions.', 'score': 1},
          {'text': 'I find creative solutions to practical problems.', 'score': 3},
          {'text': 'I don\'t consider myself creative.', 'score': 2},
        ],
      },
      {
        'questionText': 'How do you manage your time?',
        'answers': [
          {'text': 'I am disciplined and prioritize my tasks effectively.', 'score': 5},
          {'text': 'I tend to procrastinate and struggle to stay organized.', 'score': 1},
          {'text': 'I delegate tasks and focus on what\'s most important.', 'score': 3},
          {'text': 'I often feel overwhelmed and struggle to meet deadlines.', 'score': 2},
        ],
      },
      {
        'questionText': 'How do you deal with criticism?',
        'answers': [
          {'text': 'I take feedback constructively and use it to improve.', 'score': 5},
          {'text': 'I feel defensive and take criticism personally.', 'score': 1},
          {'text': 'I appreciate honest feedback and try to learn from it.', 'score': 3},
          {'text': 'I ignore criticism and focus on my own opinions.', 'score': 2},
        ],
      },
      {
        'questionText': 'How do you approach new challenges?',
        'answers': [
          {'text': 'I embrace challenges as opportunities for growth.', 'score': 5},
          {'text': 'I feel overwhelmed by challenges and avoid them if possible.', 'score': 1},
          {'text': 'I tackle challenges methodically and persistently.', 'score': 3},
          {'text': 'I feel anxious and unsure about how to handle challenges.', 'score': 2},
        ],
      },
      {
        'questionText': 'How do you prefer to communicate?',
        'answers': [
          {'text': 'I am outgoing and enjoy face-to-face interactions.', 'score': 5},
          {'text': 'I prefer written communication to express myself.', 'score': 1},
          {'text': 'I am a good listener and value meaningful conversations.', 'score': 3},
          {'text': 'I find social interactions draining and prefer solitude.', 'score': 2},
        ],
      },
      {
        'questionText': 'How do you handle failure?',
        'answers': [
          {'text': 'I see failure as a learning opportunity and bounce back quickly.', 'score': 5},
          {'text': 'I feel discouraged by failure and struggle to recover.', 'score': 1},
          {'text': 'I reflect on my mistakes and use them to improve in the future.', 'score': 3},
          {'text': 'I avoid taking risks to prevent failure.', 'score': 2},
        ],
      },
      {
        'questionText': 'How do you approach friendships?',
        'answers': [
          {'text': 'I value deep connections and invest time in nurturing friendships.', 'score': 5},
          {'text': 'I prefer to keep my circle small and focus on a few close friends.', 'score': 1},
          {'text': 'I enjoy meeting new people but struggle to maintain long-term friendships.', 'score': 3},
          {'text': 'I prefer to keep to myself and avoid social interactions.', 'score': 2},
        ],
      },
      {
        'questionText': 'How do you handle success?',
        'answers': [
          {'text': 'I remain humble and grateful for my achievements.', 'score': 5},
          {'text': 'I become complacent and stop pushing myself.', 'score': 1},
          {'text': 'I set higher goals and strive for continuous improvement.', 'score': 3},
          {'text': 'I feel pressured to maintain my success and fear failure.', 'score': 2},
        ],
      },
      {
        'questionText': 'How do you cope with loneliness?',
        'answers': [
          {'text': 'I reach out to friends and loved ones for support.', 'score': 5},
          {'text': 'I distract myself with activities to avoid feeling lonely.', 'score': 1},
          {'text': 'I embrace solitude and enjoy my own company.', 'score': 3},
          {'text': 'I feel overwhelmed by loneliness and struggle to cope.', 'score': 2},
        ],
      },
      {
        'questionText': 'How do you approach leadership?',
        'answers': [
          {'text': 'I enjoy leading and guiding others towards a common goal.', 'score': 5},
          {'text': 'I prefer to work independently and avoid leadership roles.', 'score': 1},
          {'text': 'I am comfortable leading when necessary but prefer collaboration.', 'score': 3},
          {'text': 'I am hesitant to take on leadership roles and fear failure.', 'score': 2},
        ],
      },
      {
        'questionText': 'How do you handle disagreements with others?',
        'answers': [
          {'text': 'I listen to others\' perspectives and try to find common ground.', 'score': 5},
          {'text': 'I stand firm in my beliefs and arguments, even if it leads to conflict.', 'score': 1},
          {'text': 'I compromise and negotiate to find a solution that satisfies everyone.', 'score': 3},
          {'text': 'I avoid confrontation and prefer to keep the peace.', 'score': 2},
        ],
      },
      {
        'questionText': 'How do you approach learning new skills?',
        'answers': [
          {'text': 'I enjoy the challenge of learning and seek opportunities for growth.', 'score': 5},
          {'text': 'I prefer to stick to what I already know and avoid learning new things.', 'score': 1},
          {'text': 'I am open to learning new skills but prefer to take my time.', 'score': 3},
          {'text': 'I feel overwhelmed by new skills and struggle to adapt.', 'score': 2},
        ],
      },
      {
        'questionText': 'How do you handle criticism in the workplace?',
        'answers': [
          {'text': 'I view criticism as constructive feedback and use it to improve.', 'score': 5},
          {'text': 'I become defensive and take criticism personally.', 'score': 1},
          {'text': 'I appreciate honest feedback but may feel hurt by harsh criticism.', 'score': 3},
          {'text': 'I ignore criticism and focus on my own opinions.', 'score': 2},
        ],
      },
    ];


    void _selectAnswer(int score, int index) {
      setState(() {
        _showNextButton = true;
        _selectedAnswerIndex = index;
        _currentScore += score; // Accumulate score locally
      });
    }


    void _nextQuestion() {
      if (widget.questionIndex < questions.length - 1) {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => QuestionScreen(
              questionIndex: widget.questionIndex + 1,
              totalScore: _currentScore, // Pass accumulated score
            ),
          ),
        );
      } else {
        Navigator.pushReplacement(
          context,
          CupertinoPageRoute(
            builder: (context) => ResultScreen(totalScore: _currentScore), // Pass accumulated score
          ),
        );
      }
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: normalText(title: 'Question ${widget.questionIndex + 1}'),
      ),
      body: Column(
        children:[
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),
          normalText(
           title : questions[widget.questionIndex]['questionText'] as String,
            fontSize: 16.0,
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),
          ...(questions[widget.questionIndex]['answers'] as List<Map<String, Object>>).asMap().entries.map((entry) {
            int index = entry.key;
            Map<String, Object> answer = entry.value;
            return InkWell(
              borderRadius: BorderRadius.circular(10),
              highlightColor: Colors.green,
              splashColor: Colors.blue,
              onTap: (){
                _selectAnswer(answer['score'] as int, index) ;
              },
              child: Card(
                color: index == _selectedAnswerIndex ? Colors.white54 : Colors.white24,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  padding:const EdgeInsets.only(left: 10),
                  margin:const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: buttonColor,
                  ),
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.height * 0.9,
                  child: Center(child: normalText(title: answer['text'] as String,fontSize: 12.0)),
                ),
              ),
            );
          }).toList(),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),
          Visibility(
            visible: _showNextButton,
            child: CustomButton(
              onTap: (){
                _nextQuestion();
              }, title: 'Next !',
            ),
          ),
        ],
      ),
    );
  }
}