import 'package:crud_framework/CRUD_base/CRUD_model_base.dart';

class Origen extends Item<int> {
  final String nombre;
  final String descripcion;

  Origen(super.key, this.nombre, this.descripcion);

  @override
  Map<String, dynamic> toMap() {

    //Diccionario para guardar los atributos y posteriormente manejarlos con mas facilidad
    Map<String, dynamic> mapa = {
      'key': this.key,
      'nombre': this.nombre,
      'descripcion': this.descripcion
    };

    return mapa;

    // TODO: implement toMap
    throw UnimplementedError();
  }
}

class CRUD_Origen implements CRUDModelBase<int,Origen> {

  Map<int, Origen> _datos = {};
  @override
  void addItem(Origen elItem) {
    // TODO: implement addItem
  }

  @override
  // TODO: implement datos
  Map<int, Origen> get datos => _datos;

  @override
  void updateItem(Origen item) {
    // TODO: implement updateItem
  }



}

class Champion extends Item<int> {
  final String nombre;
  final Origen origen;
  final int ataque;
  final int vida;
  final int magia;

  Champion(
      super.key, this.origen, this.nombre, this.ataque, this.vida, this.magia);


  @override
  Map<String, dynamic> toMap() {

    //Diccionario para guardar los atributos y posteriormente manejarlos con mas facilidad
    Map<String, dynamic> mapa = {
      'key': this.key,
      'nombre': this.nombre,
      'origen': this.origen,
      'ataque': this.ataque,
      'vida': this.vida,
      'magia': this.magia,
    };

    return mapa;

    // TODO: implement toMap
    throw UnimplementedError();
  }
}

class CRUD_champion implements CRUDModelBase<int,Champion> {

  Map<int, Champion> _datos = {};

  @override
  void addItem(Champion elItem) {
    // TODO: implement addItem
  }

  @override
  // TODO: implement datos
  Map<int, Champion> get datos => _datos;

  @override
  void updateItem(Champion item) {
    // TODO: implement updateItem
  }






}
