import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

double ratingAvg(
  double oldAvg,
  double newAvg,
) {
  newAvg = (oldAvg + newAvg) / 2;
  return newAvg;
}

int reportCounter(int numreports) {
  numreports = numreports + 1;
  return numreports;
}
