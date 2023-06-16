import 'package:flutter/material.dart';
import 'widgets/alertDialogue.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "test",
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.lightGreen),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with WidgetsBindingObserver {
  late ScrollController _scrollController;
  double _toolbarHeight = 300;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_handleScroll);
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_handleScroll);
    _scrollController.dispose();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  void _handleScroll() {
    setState(() {
      final offset = _scrollController.offset;
      _toolbarHeight = offset <= 1 ? 300 : 300 - offset;
      _toolbarHeight =
          _toolbarHeight.clamp(1, 300); // Clamp the value within a valid range
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: _toolbarHeight,
        centerTitle: true,
        title: const Text(
          "Chatty App",
          style: TextStyle(fontSize: 50),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.elliptical(30, 20),
          ),
        ),
        elevation: 0,
      ),
      body: ListView.builder(
        controller: _scrollController,
        padding: const EdgeInsets.all(8),
        itemCount: 100,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Number $index'),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showAlertDialog(context);
        },
        label: const Text("Add Channel"),
        icon: const Icon(Icons.add),
        elevation: 0,
      ),
    );
  }
}
