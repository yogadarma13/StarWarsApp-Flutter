class Film {
  final String title;
  final int episode;
  final String director;
  final String producer;
  final String releaseDate;
  final String opening;

  Film(
      {this.title,
      this.episode,
      this.director,
      this.producer,
      this.releaseDate,
      this.opening});

  factory Film.fromJson(Map<String, dynamic> json) {
    return Film(
      title: json['title'],
      episode: json['episode_id'],
      director: json['director'],
      producer: json['producer'],
      releaseDate: json['release_date'],
      opening: json['opening_crawl'],
    );
  }
}
