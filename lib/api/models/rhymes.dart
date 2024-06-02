

import 'package:json_annotation/json_annotation.dart'; // Импортируем пакет для работы с аннотациями JSON

part 'rhymes.g.dart'; // Подключаем сгенерированный файл для сериализации/десериализации

// Аннотация для генерации вспомогательного кода для JSON-сериализации
@JsonSerializable()
class Rhymes {
  // Конструктор класса Rhymes с обязательным параметром words
  const Rhymes({required this.words});

  // Фабричный конструктор для создания экземпляра Rhymes из JSON
  factory Rhymes.fromJson(Map<String, dynamic> json) => _$RhymesFromJson(json);

  // Поле для хранения списка слов, которые рифмуются
  final List<String> words;

  // Метод для преобразования экземпляра Rhymes в JSON
  Map<String, dynamic> toJson() => _$RhymesToJson(this);
}
