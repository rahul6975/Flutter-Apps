class Report {
  late int date;
  late String state;
  late int positive;
  late Null probableCases;
  late Null negative;
  late Null pending;
  late String totalTestResultsSource;
  late int totalTestResults;
  late int hospitalizedCurrently;
  late int hospitalizedCumulative;
  late Null inIcuCurrently;
  late Null inIcuCumulative;
  late Null onVentilatorCurrently;
  late Null onVentilatorCumulative;
  late int recovered;
  late String lastUpdateEt;
  late String dateModified;
  late String checkTimeEt;
  late int death;
  late int hospitalized;
  late Null hospitalizedDischarged;
  late String dateChecked;
  late int totalTestsViral;
  late Null positiveTestsViral;
  late Null negativeTestsViral;
  late Null positiveCasesViral;
  late Null deathConfirmed;
  late Null deathProbable;
  late Null totalTestEncountersViral;
  late Null totalTestsPeopleViral;
  late Null totalTestsAntibody;
  late Null positiveTestsAntibody;
  late Null negativeTestsAntibody;
  late Null totalTestsPeopleAntibody;
  late Null positiveTestsPeopleAntibody;
  late Null negativeTestsPeopleAntibody;
  late Null totalTestsPeopleAntigen;
  late Null positiveTestsPeopleAntigen;
  late Null totalTestsAntigen;
  late Null positiveTestsAntigen;
  late String fips;
  late int positiveIncrease;
  late int negativeIncrease;
  late int total;
  late int totalTestResultsIncrease;
  late int posNeg;
  late Null dataQualityGrade;
  late int deathIncrease;
  late int hospitalizedIncrease;
  late String hash;
  late int commercialScore;
  late int negativeRegularScore;
  late int negativeScore;
  late int positiveScore;
  late int score;
  late String grade;

  Report(
      {required this.date,
      required this.state,
      required this.positive,
      required this.probableCases,
      required this.negative,
      required this.pending,
      required this.totalTestResultsSource,
      required this.totalTestResults,
      required this.hospitalizedCurrently,
      required this.hospitalizedCumulative,
      required this.inIcuCurrently,
      required this.inIcuCumulative,
      required this.onVentilatorCurrently,
      required this.onVentilatorCumulative,
      required this.recovered,
      required this.lastUpdateEt,
      required this.dateModified,
      required this.checkTimeEt,
      required this.death,
      required this.hospitalized,
      required this.hospitalizedDischarged,
      required this.dateChecked,
      required this.totalTestsViral,
      required this.positiveTestsViral,
      required this.negativeTestsViral,
      required this.positiveCasesViral,
      required this.deathConfirmed,
      required this.deathProbable,
      required this.totalTestEncountersViral,
      required this.totalTestsPeopleViral,
      required this.totalTestsAntibody,
      required this.positiveTestsAntibody,
      required this.negativeTestsAntibody,
      required this.totalTestsPeopleAntibody,
      required this.positiveTestsPeopleAntibody,
      required this.negativeTestsPeopleAntibody,
      required this.totalTestsPeopleAntigen,
      required this.positiveTestsPeopleAntigen,
      required this.totalTestsAntigen,
      required this.positiveTestsAntigen,
      required this.fips,
      required this.positiveIncrease,
      required this.negativeIncrease,
      required this.total,
      required this.totalTestResultsIncrease,
      required this.posNeg,
      required this.dataQualityGrade,
      required this.deathIncrease,
      required this.hospitalizedIncrease,
      required this.hash,
      required this.commercialScore,
      required this.negativeRegularScore,
      required this.negativeScore,
      required this.positiveScore,
      required this.score,
      required this.grade});

  Report.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    state = json['state'];
    positive = json['positive'];
    probableCases = json['probableCases'];
    negative = json['negative'];
    pending = json['pending'];
    totalTestResultsSource = json['totalTestResultsSource'];
    totalTestResults = json['totalTestResults'];
    hospitalizedCurrently = json['hospitalizedCurrently'];
    hospitalizedCumulative = json['hospitalizedCumulative'];
    inIcuCurrently = json['inIcuCurrently'];
    inIcuCumulative = json['inIcuCumulative'];
    onVentilatorCurrently = json['onVentilatorCurrently'];
    onVentilatorCumulative = json['onVentilatorCumulative'];
    recovered = json['recovered'];
    lastUpdateEt = json['lastUpdateEt'];
    dateModified = json['dateModified'];
    checkTimeEt = json['checkTimeEt'];
    death = json['death'];
    hospitalized = json['hospitalized'];
    hospitalizedDischarged = json['hospitalizedDischarged'];
    dateChecked = json['dateChecked'];
    totalTestsViral = json['totalTestsViral'];
    positiveTestsViral = json['positiveTestsViral'];
    negativeTestsViral = json['negativeTestsViral'];
    positiveCasesViral = json['positiveCasesViral'];
    deathConfirmed = json['deathConfirmed'];
    deathProbable = json['deathProbable'];
    totalTestEncountersViral = json['totalTestEncountersViral'];
    totalTestsPeopleViral = json['totalTestsPeopleViral'];
    totalTestsAntibody = json['totalTestsAntibody'];
    positiveTestsAntibody = json['positiveTestsAntibody'];
    negativeTestsAntibody = json['negativeTestsAntibody'];
    totalTestsPeopleAntibody = json['totalTestsPeopleAntibody'];
    positiveTestsPeopleAntibody = json['positiveTestsPeopleAntibody'];
    negativeTestsPeopleAntibody = json['negativeTestsPeopleAntibody'];
    totalTestsPeopleAntigen = json['totalTestsPeopleAntigen'];
    positiveTestsPeopleAntigen = json['positiveTestsPeopleAntigen'];
    totalTestsAntigen = json['totalTestsAntigen'];
    positiveTestsAntigen = json['positiveTestsAntigen'];
    fips = json['fips'];
    positiveIncrease = json['positiveIncrease'];
    negativeIncrease = json['negativeIncrease'];
    total = json['total'];
    totalTestResultsIncrease = json['totalTestResultsIncrease'];
    posNeg = json['posNeg'];
    dataQualityGrade = json['dataQualityGrade'];
    deathIncrease = json['deathIncrease'];
    hospitalizedIncrease = json['hospitalizedIncrease'];
    hash = json['hash'];
    commercialScore = json['commercialScore'];
    negativeRegularScore = json['negativeRegularScore'];
    negativeScore = json['negativeScore'];
    positiveScore = json['positiveScore'];
    score = json['score'];
    grade = json['grade'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    data['state'] = this.state;
    data['positive'] = this.positive;
    data['probableCases'] = this.probableCases;
    data['negative'] = this.negative;
    data['pending'] = this.pending;
    data['totalTestResultsSource'] = this.totalTestResultsSource;
    data['totalTestResults'] = this.totalTestResults;
    data['hospitalizedCurrently'] = this.hospitalizedCurrently;
    data['hospitalizedCumulative'] = this.hospitalizedCumulative;
    data['inIcuCurrently'] = this.inIcuCurrently;
    data['inIcuCumulative'] = this.inIcuCumulative;
    data['onVentilatorCurrently'] = this.onVentilatorCurrently;
    data['onVentilatorCumulative'] = this.onVentilatorCumulative;
    data['recovered'] = this.recovered;
    data['lastUpdateEt'] = this.lastUpdateEt;
    data['dateModified'] = this.dateModified;
    data['checkTimeEt'] = this.checkTimeEt;
    data['death'] = this.death;
    data['hospitalized'] = this.hospitalized;
    data['hospitalizedDischarged'] = this.hospitalizedDischarged;
    data['dateChecked'] = this.dateChecked;
    data['totalTestsViral'] = this.totalTestsViral;
    data['positiveTestsViral'] = this.positiveTestsViral;
    data['negativeTestsViral'] = this.negativeTestsViral;
    data['positiveCasesViral'] = this.positiveCasesViral;
    data['deathConfirmed'] = this.deathConfirmed;
    data['deathProbable'] = this.deathProbable;
    data['totalTestEncountersViral'] = this.totalTestEncountersViral;
    data['totalTestsPeopleViral'] = this.totalTestsPeopleViral;
    data['totalTestsAntibody'] = this.totalTestsAntibody;
    data['positiveTestsAntibody'] = this.positiveTestsAntibody;
    data['negativeTestsAntibody'] = this.negativeTestsAntibody;
    data['totalTestsPeopleAntibody'] = this.totalTestsPeopleAntibody;
    data['positiveTestsPeopleAntibody'] = this.positiveTestsPeopleAntibody;
    data['negativeTestsPeopleAntibody'] = this.negativeTestsPeopleAntibody;
    data['totalTestsPeopleAntigen'] = this.totalTestsPeopleAntigen;
    data['positiveTestsPeopleAntigen'] = this.positiveTestsPeopleAntigen;
    data['totalTestsAntigen'] = this.totalTestsAntigen;
    data['positiveTestsAntigen'] = this.positiveTestsAntigen;
    data['fips'] = this.fips;
    data['positiveIncrease'] = this.positiveIncrease;
    data['negativeIncrease'] = this.negativeIncrease;
    data['total'] = this.total;
    data['totalTestResultsIncrease'] = this.totalTestResultsIncrease;
    data['posNeg'] = this.posNeg;
    data['dataQualityGrade'] = this.dataQualityGrade;
    data['deathIncrease'] = this.deathIncrease;
    data['hospitalizedIncrease'] = this.hospitalizedIncrease;
    data['hash'] = this.hash;
    data['commercialScore'] = this.commercialScore;
    data['negativeRegularScore'] = this.negativeRegularScore;
    data['negativeScore'] = this.negativeScore;
    data['positiveScore'] = this.positiveScore;
    data['score'] = this.score;
    data['grade'] = this.grade;
    return data;
  }
}
