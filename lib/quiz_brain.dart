import 'package:quizzler/question.dart' ;
class QuizBrain {
  int _qNo = 0;
  List<Question> _quslist = [
    new Question(q: 'You can lead a cow down stairs but not up stairs.', a: false) ,
    new Question(q: 'A slug\'s blood is green', a: true) ,
    new Question(q: 'Approximately one quarter of human bones are in the feet', a: true)
  ];

  void nextQuestion(){
    if(_qNo < _quslist.length-1){
      _qNo++;
    }
    print(_qNo);
    print(_quslist.length);
  }
  String getQuestionText(int num){
    return _quslist[_qNo].question ;
  }

  bool getAnswer(){
    return _quslist[_qNo].ans ;
  }
  void setZero(){
    _qNo = 0 ;
  }
  bool isNextQuestionThere(){
    return _qNo != _quslist.length-1 ;
  }
}