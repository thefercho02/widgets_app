import 'package:flutter/material.dart';

const cards = <Map<String, dynamic>>[
  {'elevations': 0.0, 'label': 'Elevation 0'},
  {'elevations': 1.0, 'label': 'Elevation 1'},
  {'elevations': 2.0, 'label': 'Elevation 2'},
  {'elevations': 3.0, 'label': 'Elevation 3'},
  {'elevations': 4.0, 'label': 'Elevation 4'},
  {'elevations': 5.0, 'label': 'Elevation 5'},
];

class CardsScreen extends StatelessWidget {
  static const name = 'cards_screen';
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cards Screen')),

      body: _CardsView(),
    );
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
      
          ...cards.map((card)=>_CardsType1( elevation: card['elevations'], label: card['label'],)),
          ...cards.map((card)=>_CardsType1( elevation: card['elevations'], label: card['label'],))
      
      
      
        ],
      
      
      ),
    );
  }
}

class _CardsType1 extends StatelessWidget {
  final String label;
  final double elevation;


  const _CardsType1({
    required this.label,
    required this.elevation


  });

  @override
  Widget build(BuildContext context) {
    return Card(

      elevation: elevation,
      child: Padding(
        padding: const EdgeInsetsGeometry.fromLTRB(10, 5, 1, 10),
        child: Column(
          children: [
            Align(
              
              alignment: Alignment.topRight,
              
              child:  IconButton(
                 icon: Icon(Icons.more_vert_outlined),
                 onPressed: () {
                   
                 },
                 ),
                 
                 
                 
                 ),


                 Align(

                  alignment: Alignment.bottomLeft,
                  child: Text(label),


                 )

          ],
        ),
        
        ),

    );
  }
}
