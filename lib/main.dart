import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final FlutterTts tts = FlutterTts();
  String text = 'In general, developing a mobile application is a complex and challenging task. There are many frameworks available to develop a mobile application. Android provides a native framework based on Java language and iOS provides a native framework based on Objective-C / Swift language.';

  @override
  void initState() {
    tts.setSpeechRate(0.5);
    tts.setPitch(1.0);
    tts.awaitSpeakCompletion(true);
    super.initState();
  }

  void speek()async{ 
    await tts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text('Text to Speech',style: TextStyle(fontSize: 15),),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Text(text),
              const SizedBox(height: 20,),
              SizedBox(
                width: 150,
                child: ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
                  onPressed: (){
                    tts.stop();
                    setState(() {
                      text = 'In general, developing a mobile application is a complex and challenging task. There are many frameworks available to develop a mobile application. Android provides a native framework based on Java language and iOS provides a native framework based on Objective-C / Swift language.';
                    });
                    tts.setLanguage('en-US');
                    speek();
                  }, 
                  child: const Text("English")
                ),
              ),
              const SizedBox(height: 20,),
              SizedBox(
                width: 150,
                child: ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
                  onPressed: (){
                    tts.stop();
                    setState(() {
                      text = 'સામાન્ય રીતે, મોબાઇલ એપ્લિકેશન વિકસાવવી એ એક જટિલ અને પડકારજનક કાર્ય છે. મોબાઇલ એપ્લિકેશન વિકસાવવા માટે ઘણા માળખા ઉપલબ્ધ છે. એન્ડ્રોઇડ જાવા ભાષા પર આધારિત નેટિવ ફ્રેમવર્ક પૂરું પાડે છે અને iOS ઑબ્જેક્ટિવ-સી / સ્વિફ્ટ ભાષા પર આધારિત નેટિવ ફ્રેમવર્ક પૂરું પાડે છે.';
                    });
                    tts.setLanguage('gu-In');
                    speek();
                  }, 
                  child: const Text("ગુજરાતી")
                ),
              ),
              const SizedBox(height: 20,),
              SizedBox(
                width: 150,
                child: ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
                  onPressed: (){
                    tts.stop();
                    setState(() {
                      text = 'सामान्य तौर पर, मोबाइल एप्लिकेशन विकसित करना एक जटिल और चुनौतीपूर्ण कार्य है। मोबाइल एप्लिकेशन विकसित करने के लिए कई रूपरेखाएँ उपलब्ध हैं। एंड्रॉइड जावा भाषा के आधार पर मूल ढांचा प्रदान करता है और आईओएस उद्देश्य-सी/स्विफ्ट भाषा के आधार पर मूल ढांचा प्रदान करता है।';
                    });
                    tts.setLanguage('hin');
                    speek();
                  }, 
                  child: const Text("हिन्दी")
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
