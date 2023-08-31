import 'package:supabase_flutter/supabase_flutter.dart';

subabaseConfing() async {
  await Supabase.initialize(
    url: "https://slugqdqfqhrsfhabfvzk.supabase.co/",
    anonKey:
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNsdWdxZHFmcWhyc2ZoYWJmdnprIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTM0NjgwNjMsImV4cCI6MjAwOTA0NDA2M30.44yAzF49T7JZiqjJtG4J5G2e1RjhDcyenHQ76aMLvj0",
  );
}

Future getCity() async {
  final List cityList =
      await Supabase.instance.client.from("city").select("city_name");
  return cityList;
}

Future addCity(String city_name) async {
  final List cityList = await Supabase.instance.client
      .from("city")
      .insert({"city_name": city_name});
  return cityList;
}
