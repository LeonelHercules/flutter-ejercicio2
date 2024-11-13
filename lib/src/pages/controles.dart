import 'package:flutter/material.dart';

class controles extends StatefulWidget {
  const controles({super.key});

  @override
  State<controles> createState() => _controlesState();
}

class _controlesState extends State<controles> {
  String nombre = '';
  String correo = '';
  String fecha = '';
  String opcion = 'Opcion 1';
  List<String> opciones = <String>['Opcion 1', 'Opcion 2', 'Opcion 3'];

  TextEditingController _inputFechaController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Controles'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: [
          _inputNumero(),
          const Divider(),
          _etiqueta(nombre),
          const Divider(),
          _inputControl(),
          _etiqueta(correo),
          const Divider(),
          _inputClave(),
          const Divider(),
          _inputFecha(),
          const Divider(),
          _combo(),
          _etiqueta(opcion),
        ],
      ),
    );
  }

  Widget _etiqueta(String dato) {
    return Text(
      dato,
      style: const TextStyle(fontSize: 30),
    );
  }

  Widget _inputNumero() {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          hintText: 'Ingrese un numero',
          labelText: 'Numero',
          icon: Icon(Icons.add)),
      onChanged: (value) => {
        setState(() {
          nombre = value;
        })
      },
    );
  }

  Widget _inputControl() {
    return TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
            hintText: 'Correo'),
        onChanged: (valor) => setState(() {
              correo = valor;
            }));
  }

  Widget _inputClave() {
    return TextField(
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
          hintText: 'Clave',
          icon: Icon(Icons.lock),
        ),
        onChanged: (valor) => setState(() {
              correo = valor;
            }));
  }

  Widget _inputFecha() {
    return TextField(
        enableInteractiveSelection: false,
        controller: _inputFechaController,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
          hintText: 'Fecha',
          labelText: 'Fecha',
          suffixIcon: Icon(Icons.perm_contact_calendar),
          icon: Icon(Icons.calendar_today),
        ),
        onTap: () {
          _seleccionarFecha(context);
        },
        onChanged: (valor) => setState(() {
              correo = valor;
            }));
  }

  Widget _combo() {
    return Row(
      children: [
        Icon(Icons.select_all),
        SizedBox(
          width: 30.0,
        ),
        Expanded(
          child: DropdownButton(
              value: opcion,
              items: opciones.map<DropdownMenuItem<String>>((String valor) {
                return DropdownMenuItem<String>(
                  value: valor,
                  child: Text(valor),
                );
              }).toList(),
              onChanged: (opt) {
                setState(() {
                  opcion = opt!;
                });
              }),
        ),
      ],
    );
  }

  List<DropdownMenuItem<String>> obtenerOpciones() {
    List<DropdownMenuItem<String>> lista = List.empty();
    lista.add(const DropdownMenuItem(child: Text('Opcion 1')));
    lista.add(const DropdownMenuItem(child: Text('Opcion 2')));
    lista.add(const DropdownMenuItem(child: Text('Opcion 3')));

    return lista;
  }

  _seleccionarFecha(BuildContext context) async {
    DateTime? fechaDato = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2020),
        lastDate: DateTime(2025));

    if (fechaDato != null) {
      setState(() {
        fecha = fechaDato.toString();
        _inputFechaController.text = fecha;
      });
    }
  }
}
