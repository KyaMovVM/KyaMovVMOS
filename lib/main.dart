import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // Это тема вашего приложения.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        //
        // Попробуйте запустить приложение с помощью «Run Thurter». Вы увидите
        // Приложение имеет синюю панель инструментов. Затем, не выходя из приложения, попробуйте
        // Изменение первичного полоса ниже к цвету. Грин, а затем вызвать
        // «Горячая перезагрузка» (нажмите «R» в консоли, где вы работали «Run Thurter»,
        // или просто сохранить изменения в «Горячее перезагрузку» в трепетании IDE).
        // обратите внимание, что счетчик не сбросил обратно к нулю; приложение
        // не перезапускается.
        primarySwatch: Colors.pink,
        //primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.
  // Этот виджет - домашняя страница вашего приложения. Это состояние, что означает
  // что он имеет объект состояния (определенный ниже), который содержит поля, которые влияют на
  // как это выглядит.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".
  // Этот класс - это конфигурация для состояния. Он содержит значения (в этом
  // корпус заголовка), предоставляемый родительским (в этом случае виджет приложения) и
  // Используется методом сборки состояния. Поля в классы виджета
  // всегда отмечен «окончательный».

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.

      // этот призыв к SetState сообщает Frandter Framework, что что-то имеет
      // изменилось в этом состоянии, что заставляет его перезапустить метод сборки ниже
      // Так что дисплей может отражать обновленные значения. Если мы изменили
      // _Counter, не вызывая setState (), то метод сборки не будет
      // Позвонил снова, и поэтому ничего не произойдет.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    // Этот метод Rerun каждый раз, когда setState вызывается, например, как сделано
    // методом _IncrementCounter выше.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    // Фракция трепетания была оптимизирована для изготовления методов сборки Rerunning Build
    // быстро, так что вы можете просто восстановить все, что нужно обновлять
    // Чем не нужно индивидуально изменить экземпляры виджетов.

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        // Здесь мы принимаем значение из объекта myhomepage, который был создан
        // Метод app.build и используйте его для установки нашего заголовка AppBar.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        // Center - виджет макета. Требуется один ребенок и позиционирует его
        // в середине родителя.

        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          // колонна также является виджетом макета. Это принимает список детей и
          // устраивает их вертикально. По умолчанию он размещает себя, чтобы соответствовать его
          // дети горизонтально, и пытается быть таким же высоким, как его родитель.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          // вызвать «отладку живописи» (нажмите «P» в консоли, выберите
          // «Toggle Debug Paint» Действие от инспектора флантера в Android
          // Студия или команда «Toggle Rebug Paint» в Visual Studio Code)
          // увидеть каркас для каждого виджета.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          // колонна имеет различные свойства для контроля, как он размещает себя и
          // Как это позиционирует своих детей. Здесь мы используем Mainaxisalignment
          // Центр детей вертикально; Главная ось здесь вертикаль
          // ось, потому что столбцы вертикальны (поперечная ось будет
          // горизонтальный).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Вы нажимали кнопку столько раз:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
      // Эта задняя запятая производит автоматическое форматирование приятнее для методов сборки.
    );
  }
}
