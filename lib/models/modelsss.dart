class models
{
  List <dynamic> articles;
  models({required this.articles});

  factory models.Fomjson(Map<String,dynamic> json)
  {
 return models(articles: json["articles"]);


  }
}