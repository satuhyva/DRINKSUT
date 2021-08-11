// ignore_for_file: file_names
import 'package:flutter/material.dart';

import '../addPage/AddPage.dart';
import '../settingsPage/SettingsPage.dart';
import '../statisticsPage/StatisticsPage.dart';

const addKey = Key('ADD PAGE');
const statisticsKey = Key('STATISTICS PAGE');
const settingsKey = Key('SETTINGS PAGE');

const List<Widget> pages = [
    AddPage(key: addKey),
    StatisticsPage(key: statisticsKey),
    SettingsPage(key: settingsKey),
  ];