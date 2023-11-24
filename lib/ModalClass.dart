class Modalclass {
  String title = '';
  String year = '';
  String rated = '';
  String released = '';
  String runtime = '';
  String gener = '';
  String director = '';
  String writer = '';
  String actors = '';
  String plot = '';
  String language = '';
  String country = '';
  String awards = '';
  String poster = '';
  List<Ratings> ratings = [
    Ratings(source: '', value: ''),
    Ratings(source: '', value: '')
  ];
  String metascore = '';
  String imdbrating = '';
  String imdbvotes = '';
  String imdbid = '';
  String type = '';
  String dvd = '';
  String boxoffice = '';
  String production = '';
  String website = '';
  String response = '';

  Modalclass({
    required this.title,
    required this.year,
    required this.rated,
    required this.released,
    required this.runtime,
    required this.gener,
    required this.director,
    required this.writer,
    required this.actors,
    required this.plot,
    required this.language,
    required this.country,
    required this.awards,
    required this.poster,
    required this.ratings,
    required this.metascore,
    required this.imdbrating,
    required this.imdbvotes,
    required this.imdbid,
    required this.type,
    required this.dvd,
    required this.boxoffice,
    required this.production,
    required this.website,
    required this.response,
  });

  Modalclass.fromejson(Map<String, dynamic> data)
      : title = data['Title'] ?? '',
        year = data['Year'] ?? '',
        rated = data['Rated'] ?? '',
        released = data['Released'] ?? '',
        runtime = data['Runtime'] ?? '',
        gener = data['Genre'] ?? '',
        director = data['Director'] ?? '',
        writer = data['Writer'] ?? '',
        actors = data['Actors'] ?? '',
        plot = data['Plot'] ?? '',
        language = data['Language'] ?? '',
        country = data['Country'] ?? '',
        awards = data['Awards'] ?? '',
        poster = data['Poster'] ?? '',
        ratings = (data['Ratings'] as List<dynamic>?)
                ?.map((rating) => Ratings.fromejson(rating))
                .toList() ??
            [],
        metascore = data['Metascore'] ?? '',
        imdbrating = data['imdbRating'] ?? '',
        imdbvotes = data['imdbVotes'] ?? '',
        imdbid = data['imdbID'] ?? '',
        type = data['Type'] ?? '',
        dvd = data['DVD'] ?? '',
        boxoffice = data['BoxOffice'] ?? '',
        production = data['Production'] ?? '',
        website = data['Website'] ?? '',
        response = data['Response'] ?? '';
  String toString() {
    return "title:$title,year:$year,rated:$rated,released:$released,runtime:$runtime,gener:$gener,director:$director,writer:$writer,actors:$actors,plot:$plot,language:$language,country:$country,awards:$awards,poster:$poster,ratings:$Ratings,matascore:$metascore,imdbrating:$imdbrating,imdbvotes:$imdbvotes,imdbid:$imdbid,type:$type,dvd:$dvd,boxoffice:$boxoffice,production:$production,website:$website,response:$response,";
  }
}

class Ratings {
  String source;
  String value;

  Ratings({
    required this.source,
    required this.value,
  });

  Ratings.fromejson(Map<String, dynamic> data)
      : source = data['Source'] ?? '',
        value = data['Value'] ?? '';

  String toString() {
    return "source:$source,value:$value";
  }
}
