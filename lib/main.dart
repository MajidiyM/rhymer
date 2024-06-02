import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart'; // Импортируем пакет для работы с переменными окружения
import 'package:rhymer2/api/api.dart'; // Импортируем ваш API-клиент
import 'package:rhymer2/router/router.dart'; // Импортируем ваш роутер

import 'ui/ui.dart'; // Импортируем UI элементы вашего приложения

// Главная функция main, которая является точкой входа в приложение
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Инициализация Flutter-приложения
  await dotenv.load(fileName: ".env"); // Загрузка переменных окружения из файла .env
  final client = RhymerApiClient.create(apiUrl: dotenv.env["API_URL"]); // Создание экземпляра API-клиента с использованием загруженного API_URL
  runApp(const RhymerApp()); // Запуск приложения
}

// Основной виджет приложения, который является StatefulWidget
class RhymerApp extends StatefulWidget {
  const RhymerApp({super.key});

  @override
  State<RhymerApp> createState() => _RhymerAppState(); // Создание состояния для виджета
}

// Состояние для RhymerApp
class _RhymerAppState extends State<RhymerApp> {
  final _router = AppRouter(); // Инициализация роутера для навигации

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false, // Отключение дебаг баннера
      title: "Rhymer", // Заголовок приложения
      theme: themeData, // Тема приложения, определенная в ui.dart
      routerConfig: _router.config(), // Конфигурация роутера
    );
  }
}
