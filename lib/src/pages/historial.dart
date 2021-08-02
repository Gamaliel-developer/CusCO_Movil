import 'package:flutter/material.dart';

class HistorialPage extends StatefulWidget{
  HistorialPageState createState() => HistorialPageState();
}

class HistorialPageState extends State<HistorialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 10.0,),
          Center(
            child: Text("Historial", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
          ),
          Tabla(),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
            child: Row(
              children: [
                Text("Filtrar por:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton.extended(
                  backgroundColor: Color.fromARGB(255, 159, 211, 170),
                  onPressed: (){}, 
                  label: Text("  Entrada  ", style: TextStyle(fontSize: 20, color: Colors.black))
                ),
                SizedBox(width: 12),
                FloatingActionButton.extended(
                  backgroundColor: Color.fromARGB(255, 247, 143, 142),
                  onPressed: (){}, 
                  label: Text("   Salida   ", style: TextStyle(fontSize: 20, color: Colors.black))
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Tabla extends StatelessWidget {
  Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Color.fromARGB(255, 183, 238, 250);
      }
      return Color.fromARGB(255, 183, 238, 250);
    }
    Color getColor2(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Color.fromARGB(255, 220, 229, 249);
      }
      return Color.fromARGB(255, 220, 229, 249);
    }
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
      child: Container(
        height: 450,
          child: ListView(
            children: [
              DataTable(
                headingRowColor: MaterialStateProperty.resolveWith(getColor),
                dataRowColor: MaterialStateProperty.resolveWith(getColor2),
                  columns: [
                    DataColumn(label: Text("Estado")),
                    DataColumn(label: Text("Fecha")),
                    DataColumn(label: Text("Hora"))
                  ], 
                  rows: [
                    DataRow(cells: [
                      DataCell(Text("Ingreso")),
                      DataCell(Text("14/05/2020")),
                      DataCell(Text("17:00:00")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Ingreso")),
                      DataCell(Text("14/05/2020")),
                      DataCell(Text("17:00:00")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Ingreso")),
                      DataCell(Text("14/05/2020")),
                      DataCell(Text("17:00:00")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Ingreso")),
                      DataCell(Text("14/05/2020")),
                      DataCell(Text("17:00:00")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Ingreso")),
                      DataCell(Text("14/05/2020")),
                      DataCell(Text("17:00:00")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Ingreso")),
                      DataCell(Text("14/05/2020")),
                      DataCell(Text("17:00:00")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Ingreso")),
                      DataCell(Text("14/05/2020")),
                      DataCell(Text("17:00:00")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Ingreso")),
                      DataCell(Text("14/05/2020")),
                      DataCell(Text("17:00:00")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Ingreso")),
                      DataCell(Text("14/05/2020")),
                      DataCell(Text("17:00:00")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Ingreso")),
                      DataCell(Text("14/05/2020")),
                      DataCell(Text("17:00:00")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Ingreso")),
                      DataCell(Text("14/05/2020")),
                      DataCell(Text("17:00:00")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Ingreso")),
                      DataCell(Text("14/05/2020")),
                      DataCell(Text("17:00:00")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Ingreso")),
                      DataCell(Text("14/05/2020")),
                      DataCell(Text("17:00:00")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Ingreso")),
                      DataCell(Text("14/05/2020")),
                      DataCell(Text("17:00:00")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Ingreso")),
                      DataCell(Text("14/05/2020")),
                      DataCell(Text("17:00:00")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Ingreso")),
                      DataCell(Text("14/05/2020")),
                      DataCell(Text("17:00:00")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Ingreso")),
                      DataCell(Text("14/05/2020")),
                      DataCell(Text("17:00:00")),
                    ]),
                  ]
                )
            ],
          )
        ),
    );
  }
  
}