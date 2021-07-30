import 'dart:ffi';

import 'package:flutter/material.dart';

class AllResponse {
  late List<Null>? htmlAttributions;
  late String? nextPageToken;
  late List<Results>? results;
  late String? status;

  AllResponse(
      {required this.htmlAttributions,
        required this.nextPageToken,
        required this.results,
        required this.status});

  AllResponse.fromJson(Map<String, dynamic> json) {
    if (json['html_attributions'] != null) {
      htmlAttributions = [];
      json['html_attributions'].forEach((v) {
        htmlAttributions!.add(v);
      });
    }
    nextPageToken = json['next_page_token'];
    if (json['results'] != null) {
      results = [];
      json['results'].forEach((v) {
        results!.add(new Results.fromJson(v));
      });
    }
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['html_attributions'] = this.htmlAttributions!.map((v) => v).toList();
    data['next_page_token'] = this.nextPageToken;
    data['results'] = this.results!.map((v) => v.toJson()).toList();
    data['status'] = this.status;
    return data;
  }
}

class Results {
  late String? businessStatus;
  late Geometry? geometry;
  late String? icon;
  late String? iconBackgroundColor;
  late String? iconMaskBaseUri;
  late String? name;
  late OpeningHours? openingHours;
  late List<Photos>? photos;
  late String? placeId;
  late PlusCode? plusCode;
  late double? rating;
  late String? reference;
  late String? scope;
  late List<String>? types;
  late int? userRatingsTotal;
  late String? vicinity;
  late int? priceLevel;
  late bool? permanentlyClosed;

  Results(
      {required this.businessStatus,
        required this.geometry,
        required this.icon,
        required this.iconBackgroundColor,
        required this.iconMaskBaseUri,
        required this.name,
        required this.openingHours,
        required this.photos,
        required this.placeId,
        required this.plusCode,
        required this.rating,
        required this.reference,
        required this.scope,
        required this.types,
        required this.userRatingsTotal,
        required this.vicinity,
        required this.priceLevel,
        required this.permanentlyClosed});

  Results.fromJson(Map<String, dynamic> json) {
    businessStatus = json['business_status'];
    geometry = (json['geometry'] != null
        ? new Geometry.fromJson(json['geometry'])
        : null)!;
    icon = json['icon'];
    iconBackgroundColor = json['icon_background_color'];
    iconMaskBaseUri = json['icon_mask_base_uri'];
    name = json['name'];
    openingHours = (json['opening_hours'] != null
        ? new OpeningHours.fromJson(json['opening_hours'])
        : null);
    if (json['photos'] != null) {
      photos = [];
      json['photos'].forEach((v) {
        photos!.add(new Photos.fromJson(v));
      });
    }
    placeId = json['place_id'];
    plusCode = (json['plus_code'] != null
        ? new PlusCode.fromJson(json['plus_code'])
        : null)!;
    rating = json['rating'] + 0.0;
    reference = json['reference'];
    scope = json['scope'];
    types = json['types'].cast<String>();
    userRatingsTotal = json['user_ratings_total'];
    vicinity = json['vicinity'];
    priceLevel = json['price_level'];
    permanentlyClosed = json['permanently_closed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['business_status'] = this.businessStatus;
    if (this.geometry != null) {
      data['geometry'] = this.geometry!.toJson();
    }
    data['icon'] = this.icon;
    data['icon_background_color'] = this.iconBackgroundColor;
    data['icon_mask_base_uri'] = this.iconMaskBaseUri;
    data['name'] = this.name;
    if (this.openingHours != null) {
      data['opening_hours'] = this.openingHours!.toJson();
    }
    if (this.photos != null) {
      data['photos'] = this.photos!.map((v) => v.toJson()).toList();
    }
    data['place_id'] = this.placeId;
    if (this.plusCode != null) {
      data['plus_code'] = this.plusCode!.toJson();
    }
    data['rating'] = this.rating;
    data['reference'] = this.reference;
    data['scope'] = this.scope;
    data['types'] = this.types;
    data['user_ratings_total'] = this.userRatingsTotal;
    data['vicinity'] = this.vicinity;
    data['price_level'] = this.priceLevel;
    data['permanently_closed'] = this.permanentlyClosed;
    return data;
  }
}

class Geometry {
  late Location? location;
  late Viewport? viewport;

  Geometry({required this.location, required this.viewport});

  Geometry.fromJson(Map<String, dynamic> json) {
    location = (json['location'] != null
        ? new Location.fromJson(json['location'])
        : null)!;
    viewport = (json['viewport'] != null
        ? new Viewport.fromJson(json['viewport'])
        : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['location'] = this.location!.toJson();
    data['viewport'] = this.viewport!.toJson();
    return data;
  }
}

class Location {
  late double? lat;
  late double? lng;

  Location({required this.lat, required this.lng});

  Location.fromJson(Map<String, dynamic> json) {
    lat = json['lat']!;
    lng = json['lng']!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lat'] = this.lat;
    data['lng'] = this.lng;
    return data;
  }
}

class Viewport {
  late Location northeast;
  late Location southwest;

  Viewport({required this.northeast, required this.southwest});

  Viewport.fromJson(Map<String, dynamic> json) {
    northeast = (json['northeast'] != null
        ? new Location.fromJson(json['northeast'])
        : null)!;
    southwest = (json['southwest'] != null
        ? new Location.fromJson(json['southwest'])
        : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.northeast != null) {
      data['northeast'] = this.northeast.toJson();
    }
    if (this.southwest != null) {
      data['southwest'] = this.southwest.toJson();
    }
    return data;
  }
}

class OpeningHours {
  late bool? openNow;

  OpeningHours({required this.openNow});

  OpeningHours.fromJson(Map<String, dynamic> json) {
    openNow = json['open_now'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['open_now'] = this.openNow;
    return data;
  }
}

class Photos {
  late int? height;
  late List<String>? htmlAttributions;
  late String? photoReference;
  late int? width;

  Photos(
      {required this.height,
        required this.htmlAttributions,
        required this.photoReference,
        required this.width});

  Photos.fromJson(Map<String, dynamic> json) {
    height = json['height'];
    htmlAttributions = json['html_attributions'].cast<String>();
    photoReference = json['photo_reference'];
    width = json['width'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['height'] = this.height;
    data['html_attributions'] = this.htmlAttributions;
    data['photo_reference'] = this.photoReference;
    data['width'] = this.width;
    return data;
  }
}

class PlusCode {
  late String? compoundCode;
  late String? globalCode;

  PlusCode({required this.compoundCode, required this.globalCode});

  PlusCode.fromJson(Map<String, dynamic> json) {
    compoundCode = json['compound_code'];
    globalCode = json['global_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['compound_code'] = this.compoundCode;
    data['global_code'] = this.globalCode;
    return data;
  }
}
