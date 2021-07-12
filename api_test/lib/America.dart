class America {
  late String state;
  late String notes;
  late String covid19Site;
  late String covid19SiteSecondary;
  late String covid19SiteTertiary;
  late String covid19SiteQuaternary;
  late String covid19SiteQuinary;
  late String twitter;
  late String covid19SiteOld;
  late String covidTrackingProjectPreferredTotalTestUnits;
  late String covidTrackingProjectPreferredTotalTestField;
  late String totalTestResultsField;
  late String pui;
  late bool pum;
  late String name;
  late String fips;

  America(
      {required this.state,
      required this.notes,
      required this.covid19Site,
      required this.covid19SiteSecondary,
      required this.covid19SiteTertiary,
      required this.covid19SiteQuaternary,
      required this.covid19SiteQuinary,
      required this.twitter,
      required this.covid19SiteOld,
      required this.covidTrackingProjectPreferredTotalTestUnits,
      required this.covidTrackingProjectPreferredTotalTestField,
      required this.totalTestResultsField,
      required this.pui,
      required this.pum,
      required this.name,
      required this.fips});

  America.fromJson(Map<String, dynamic> json) {
    state = json['state'];
    notes = json['notes'];
    covid19Site = json['covid19Site'];
    covid19SiteSecondary = json['covid19SiteSecondary'];
    covid19SiteTertiary = json['covid19SiteTertiary'];
    covid19SiteQuaternary = json['covid19SiteQuaternary'];
    covid19SiteQuinary = json['covid19SiteQuinary'];
    twitter = json['twitter'];
    covid19SiteOld = json['covid19SiteOld'];
    covidTrackingProjectPreferredTotalTestUnits =
        json['covidTrackingProjectPreferredTotalTestUnits'];
    covidTrackingProjectPreferredTotalTestField =
        json['covidTrackingProjectPreferredTotalTestField'];
    totalTestResultsField = json['totalTestResultsField'];
    pui = json['pui'];
    pum = json['pum'];
    name = json['name'];
    fips = json['fips'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['state'] = this.state;
    data['notes'] = this.notes;
    data['covid19Site'] = this.covid19Site;
    data['covid19SiteSecondary'] = this.covid19SiteSecondary;
    data['covid19SiteTertiary'] = this.covid19SiteTertiary;
    data['covid19SiteQuaternary'] = this.covid19SiteQuaternary;
    data['covid19SiteQuinary'] = this.covid19SiteQuinary;
    data['twitter'] = this.twitter;
    data['covid19SiteOld'] = this.covid19SiteOld;
    data['covidTrackingProjectPreferredTotalTestUnits'] =
        this.covidTrackingProjectPreferredTotalTestUnits;
    data['covidTrackingProjectPreferredTotalTestField'] =
        this.covidTrackingProjectPreferredTotalTestField;
    data['totalTestResultsField'] = this.totalTestResultsField;
    data['pui'] = this.pui;
    data['pum'] = this.pum;
    data['name'] = this.name;
    data['fips'] = this.fips;
    return data;
  }
}
