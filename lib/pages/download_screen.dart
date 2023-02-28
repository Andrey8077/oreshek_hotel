import 'dart:async'; // Импортирует пакет для работы с асинхронными операциями

import 'package:flutter/material.dart'; // Импортирует пакет Flutter Material Design


void main() => runApp(const MyApp()); // Запускает функцию runApp(), которая создает и запускает экземпляр MyApp



class MyApp extends StatelessWidget {
  const MyApp({super.key});
 // Создает класс MyApp, который является состоянием приложения
  @override
  Widget build(BuildContext context) { // Метод build создает и возвращает виджет MaterialApp
    return MaterialApp(
      title: 'Hotel App', // Устанавливает заголовок приложения
      debugShowCheckedModeBanner: false, // Отключает баннер отладки
      theme: ThemeData( // Устанавливает тему приложения
        primarySwatch: Colors.blue, // Устанавливает основной цвет приложения
        visualDensity: VisualDensity.adaptivePlatformDensity, // Устанавливает плотность экрана
      ),
      home: const HotelLoadingScreen(), // Устанавливает главный экран приложения как HotelLoadingScreen
      routes: { // Устанавливает маршруты приложения
        '/next_screen': (context) => NextScreen(), // Устанавливает маршрут для экрана NextScreen
      },
    );
  }
}



class HotelLoadingScreen extends StatefulWidget {
  const HotelLoadingScreen({super.key});
 // Создает класс HotelLoadingScreen, который является состоянием экрана загрузки
  @override
  _HotelLoadingScreenState createState() => _HotelLoadingScreenState();
}

class _HotelLoadingScreenState extends State<HotelLoadingScreen> { // Создает класс _HotelLoadingScreenState, который является состоянием экрана загрузки и наследует от State<HotelLoadingScreen>
  @override
  void initState() { // Метод initState вызывается при инициализации экрана
    super.initState();
    Timer(const Duration(seconds: 7), () { // Создает таймер на 7 секунд, который запускает переход на следующий экран
      Navigator.of(context).pushReplacementNamed('/next_screen');
    });
  }




  @override
  Widget build(BuildContext context) { // Метод build создает и возвращает виджет Scaffold
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Отключает баннер отладки
      home: Scaffold(
        body: Center(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.png'), // Устанавливает изображение в качестве фона контейнера
                fit: BoxFit.cover,
              ),
            ),



            child: Column( // Создает столбец для размещения текста
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 100), // Добавляет пустое пространство в 100

                const Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text(
                    'Welcome to',
                    style: TextStyle(
                      color: Color(0xFF34512E),
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w700,
                      fontSize: 36,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(2, 2),
                          blurRadius: 3.0,
                          color: Colors.grey,
                        ),
                      ],
                      height: 1.4,
                      letterSpacing: 0.2,
                    ),
                  ),
                ),



                const Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text(
                    'Oreshek',
                    style: TextStyle(
                      color: Color(0xFFAF7131),
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w700,
                      fontSize: 82,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(2, 2),
                          blurRadius: 3.0,
                          color: Colors.grey,
                        ),
                      ],
                      height: 1.4,
                      letterSpacing: 0.2,
                    ),
                  ),
                ),



                const Spacer(),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(left: 30, bottom: 100,),
                  child: const Text(
                    'The best hotel bookings in the century to accompany your vacation',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(2, 2),
                          blurRadius: 3.0,
                          color: Colors.grey,
                        ),
                      ],
                      height: 1.4,
                      letterSpacing: 0.2,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



class NextScreen extends StatelessWidget {
  const NextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Next Screen'),
      ),
      body: const Center(
        child: Text('Hello world'),
      ),
    );
  }
}
