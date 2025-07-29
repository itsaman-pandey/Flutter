import 'package:quiz_app/models/quiz_question.dart';

const questions = [
  QuizQuestion('What are the main building blocks of Flutter UIs?', [
    'Widgets',
    'Components',
    'Blocks',
    'Functions',
  ]),
  QuizQuestion('How are Flutter UIs built?', [
    'By combining widgets in code',
    'By combining widgets in a visual editor',
    'By defining widgets in config files',
    'By using XCode for iOS and Android Studio for Android',
  ]),
  QuizQuestion('What\'s the purpose of a StatefulWidget?', [
    'Update UI as data changes',
    'Update data as UI changes',
    'Ignore data changes',
    'Render UI that does not depend on data',
  ]),
  QuizQuestion(
    'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  QuizQuestion('What happens if you change data in a StatelessWidget?', [
    'The UI is not updated',
    'The UI is updated',
    'The closest StatefulWidget is updated',
    'Any nested StatefulWidgets are updated',
  ]),
  QuizQuestion('How should you update data inside of StatefulWidgets?', [
    'By calling setState()',
    'By calling updateData()',
    'By calling updateUI()',
    'By calling updateState()',
  ]),
  QuizQuestion('What language is used to build Flutter apps?', [
    'Dart',
    'Kotlin',
    'Java',
    'Swift',
  ]),
  QuizQuestion('What does the `build()` method return?', [
    'A Widget',
    'A Function',
    'A Future',
    'A Stream',
  ]),
  QuizQuestion('Which widget is used to lay out children vertically?', [
    'Column',
    'Row',
    'Stack',
    'GridView',
  ]),
  QuizQuestion('Which widget is best for detecting user taps?', [
    'GestureDetector',
    'Container',
    'SafeArea',
    'Scaffold',
  ]),
  QuizQuestion('What is the entry point of a Flutter app?', [
    'main()',
    'runApp()',
    'initState()',
    'MyApp()',
  ]),
  QuizQuestion('What does `setState()` do in Flutter?', [
    'Triggers UI update',
    'Changes widget tree',
    'Modifies theme',
    'Saves data locally',
  ]),
  QuizQuestion('Which widget provides basic visual layout structure?', [
    'Scaffold',
    'Container',
    'Padding',
    'Align',
  ]),
  QuizQuestion('What widget is used to overlay widgets on top of each other?', [
    'Stack',
    'Column',
    'ListView',
    'Center',
  ]),
  QuizQuestion(
    'Which method is called once when a StatefulWidget is inserted into the widget tree?',
    ['initState()', 'build()', 'createState()', 'dispose()'],
  ),
  QuizQuestion('What widget should you use to scroll a list vertically?', [
    'ListView',
    'Row',
    'Stack',
    'Padding',
  ]),
  QuizQuestion('How can you apply margin to a widget?', [
    'Using the margin property in Container',
    'Using the padding property in Padding',
    'Using EdgeInsets.only in Center',
    'Using Expanded widget',
  ]),
  QuizQuestion('What is hot reload in Flutter?', [
    'A way to inject code changes without restarting the app',
    'A way to recompile the entire app',
    'An error message for memory issues',
    'A tool for testing background services',
  ]),
  QuizQuestion('What does the `Expanded` widget do?', [
    'Takes available space in a Row or Column',
    'Creates a scrollable layout',
    'Makes a widget float',
    'Fixes layout bugs',
  ]),
  QuizQuestion(
    'What widget prevents UI from going under system status bar or notch?',
    ['SafeArea', 'Container', 'Padding', 'AppBar'],
  ),
];
