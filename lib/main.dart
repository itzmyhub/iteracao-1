// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: WidgetComEstado(),
//       debugShowCheckedModeBanner: false,
//     ),
//   );
// }

// class WidgetComEstado extends StatefulWidget {
//   @override
//   _WidgetComEstadoState createState() {
//     return _WidgetComEstadoState();
//   }
// }

// class _WidgetComEstadoState extends State<WidgetComEstado> {
//   var _tamanho = 32.0;

//   void _aumentar() {
//     setState(() {
//       _tamanho = _tamanho + 16;
//     });
//   }

//   void _diminuir() {
//     setState(() {
//       _tamanho = _tamanho - 16;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: <Widget>[
//           FlutterLogo(size: _tamanho),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               FloatingActionButton(
//                 onPressed: _aumentar,
//                 child: Icon(Icons.add),
//               ),
//               SizedBox(width: 10),
//               FloatingActionButton(
//                 onPressed: _diminuir,
//                 child: Icon(Icons.remove),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:app/provider/students.dart';
import 'package:app/routes/app_routes.dart';
import 'package:app/views/forms/student_form.dart';
import 'package:app/views/lists/students_list.dart';
import 'package:app/views/login/login_page.dart';
import 'package:app/views/register_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Students(),
        )
      ],
      child: MaterialApp(
        title: 'Grades',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        routes: {
          AppRoutes.HOME: (_) => StudentsList(),
          AppRoutes.STUDENT_FORM: (_) => StudentForm()
        },
      ),
    );
  }
}
