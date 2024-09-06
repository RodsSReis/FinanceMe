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
