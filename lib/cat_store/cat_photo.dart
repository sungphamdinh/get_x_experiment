class CatPhoto {
  final String id;
  final String url;
  final int width;
  final int height;
  CatPhoto(this.id, {this.url = '', this.height = 0, this.width = 0});

  factory CatPhoto.fromJson(Map<String, dynamic> json) {
    return CatPhoto(json['id'],
        url: json['url'], width: json['width'], height: json['height']);
  }
}
