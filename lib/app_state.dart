import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _listaValores =
          prefs.getStringList('ff_listaValores')?.map(double.parse).toList() ??
              _listaValores;
    });
    _safeInit(() {
      _numList =
          prefs.getStringList('ff_numList')?.map(double.parse).toList() ??
              _numList;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _popup = false;
  bool get popup => _popup;
  set popup(bool value) {
    _popup = value;
  }

  List<double> _listaValores = [];
  List<double> get listaValores => _listaValores;
  set listaValores(List<double> value) {
    _listaValores = value;
    prefs.setStringList(
        'ff_listaValores', value.map((x) => x.toString()).toList());
  }

  void addToListaValores(double value) {
    listaValores.add(value);
    prefs.setStringList(
        'ff_listaValores', _listaValores.map((x) => x.toString()).toList());
  }

  void removeFromListaValores(double value) {
    listaValores.remove(value);
    prefs.setStringList(
        'ff_listaValores', _listaValores.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromListaValores(int index) {
    listaValores.removeAt(index);
    prefs.setStringList(
        'ff_listaValores', _listaValores.map((x) => x.toString()).toList());
  }

  void updateListaValoresAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    listaValores[index] = updateFn(_listaValores[index]);
    prefs.setStringList(
        'ff_listaValores', _listaValores.map((x) => x.toString()).toList());
  }

  void insertAtIndexInListaValores(int index, double value) {
    listaValores.insert(index, value);
    prefs.setStringList(
        'ff_listaValores', _listaValores.map((x) => x.toString()).toList());
  }

  List<double> _numList = [];
  List<double> get numList => _numList;
  set numList(List<double> value) {
    _numList = value;
    prefs.setStringList('ff_numList', value.map((x) => x.toString()).toList());
  }

  void addToNumList(double value) {
    numList.add(value);
    prefs.setStringList(
        'ff_numList', _numList.map((x) => x.toString()).toList());
  }

  void removeFromNumList(double value) {
    numList.remove(value);
    prefs.setStringList(
        'ff_numList', _numList.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromNumList(int index) {
    numList.removeAt(index);
    prefs.setStringList(
        'ff_numList', _numList.map((x) => x.toString()).toList());
  }

  void updateNumListAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    numList[index] = updateFn(_numList[index]);
    prefs.setStringList(
        'ff_numList', _numList.map((x) => x.toString()).toList());
  }

  void insertAtIndexInNumList(int index, double value) {
    numList.insert(index, value);
    prefs.setStringList(
        'ff_numList', _numList.map((x) => x.toString()).toList());
  }

  bool _popup2 = false;
  bool get popup2 => _popup2;
  set popup2(bool value) {
    _popup2 = value;
  }

  String _valueFormat = '';
  String get valueFormat => _valueFormat;
  set valueFormat(String value) {
    _valueFormat = value;
  }

  double _valueDouble = 0.0;
  double get valueDouble => _valueDouble;
  set valueDouble(double value) {
    _valueDouble = value;
  }

  int _contador = -1;
  int get contador => _contador;
  set contador(int value) {
    _contador = value;
  }

  int _contador2 = 0;
  int get contador2 => _contador2;
  set contador2(int value) {
    _contador2 = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
