class NasaEndpoints{
  static  String apod (String apiKey, String date) => "https://apod.nasa.gov/planetary/apod?$apiKey=DEMO_KEY&date=$date";
}