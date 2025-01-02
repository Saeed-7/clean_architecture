library;

/// Created by Saeed Fekri on 12/29/2024.
///
/// @email: en.saeedfekri@gmail.com

class SourceModel {
  String id, name, description, url, category, language, country;

  SourceModel._({
    required this.id,
    required this.name,
    required this.description,
    required this.url,
    required this.category,
    required this.language,
    required this.country,
  });

  // Factory for JSON Parsing
  factory SourceModel.fromJson(Map<String, dynamic> json) {
    return SourceModel._(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      description: json['description'] ?? '',
      url: json['url'] ?? '',
      category: json['category'] ?? '',
      language: json['language'] ?? '',
      country: json['country'] ?? '',
    );
  }

  /// Get List of [SourceModel] By JsonList
  static List<SourceModel> getList(List jsonList) {
    List<SourceModel> output = [];
    for (var element in jsonList) {
      output.add(SourceModel.fromJson(element));
    }
    return output;
  }
}
