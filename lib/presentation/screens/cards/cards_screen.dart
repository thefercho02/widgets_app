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



          ...cards.map((card)=>_CardsType2( elevation: card['elevations'], label: card['label'],)),

          ...cards.map((card)=>_CardsType3( elevation: card['elevations'], label: card['label'],)),

          ...cards.map((card)=>_CardsType4( elevation: card['elevations'], label: card['label'],)),

          SizedBox(height: 25,),
      
      
      
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

    final colors= Theme.of(context).colorScheme;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        side:BorderSide(
          color: colors.outline
        )
      ),
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
                  child: Text('$label- outline'),


                 )

          ],
        ),
        
        ),

    );
  }
}



class _CardsType2 extends StatelessWidget {
  final String label;
  final double elevation;


  const _CardsType2({
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


class _CardsType3 extends StatelessWidget {


  final String label;
  final double elevation;


  const _CardsType3({
    required this.label,
    required this.elevation


  });

  @override
  Widget build(BuildContext context) {

    final colors= Theme.of(context).colorScheme;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        side:BorderSide(
          color: colors.onSurfaceVariant,
        )
      ),
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
                  child: Text('$label- Filled'),


                 )

          ],
        ),
        
        ),

    );
  }
}


class _CardsType4 extends StatelessWidget {
  final String label;
  final double elevation;


  const _CardsType4({
    required this.label,
    required this.elevation


  });

  @override
  Widget build(BuildContext context) {

    final colors= Theme.of(context).colorScheme;
    return Card(
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        side:BorderSide(
          color: colors.onSurfaceVariant,
        )
      ),
      elevation: elevation,
      child: Stack(
        children: [
      
      
          Image.network(
      
            'https://picsum.photos/id/${elevation.toInt()}/600/350',

            height: 350,
            fit: BoxFit.cover,

          ),
      
          Align(
            
            alignment: Alignment.topRight,
            
            child:  Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20))
              ) ,
              child: IconButton(
                 icon: Icon(Icons.more_vert_outlined),
                 onPressed: () {
                   
                 },
                 ),
            ),
               
               
               
               ),
      
      
               
        ],
      ),

    );
  }
}
