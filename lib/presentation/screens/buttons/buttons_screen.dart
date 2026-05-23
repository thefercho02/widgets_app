import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const name = 'buttons_screen';
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Buttons Screen')),

      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width:double.infinity ,
      child: Padding(
        padding: const EdgeInsetsGeometry.symmetric(horizontal: 10, vertical:20),
        child: Wrap(
          spacing: 10,
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton( onPressed: () {},child: const Text('Elevated Button')),
            ElevatedButton( onPressed: () {},child: const Text('Elevated Button')),
            ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.access_alarm_rounded),label:const Text('Elevated Icon')),
          
          
          FilledButton(onPressed: (){}, child: const Text('filed')),
          FilledButton.icon(onPressed: (){}, icon: const Icon(Icons.add_location_alt_sharp), label: Text('Filed icon'),),
          
          OutlinedButton(onPressed: (){}, child: const Text('outline')),
          OutlinedButton.icon(onPressed: (){}, icon: Icon(Icons.airlines),label: Text('plane'),),


          TextButton(onPressed: (){}, child: const Text('button textbutton')),
           TextButton.icon(onPressed: (){}, icon: Icon(Icons.whatshot_sharp), label: Text('botonTextButton'),),
           //TODO CUSTOM BOTTON

           IconButton(onPressed: (){}, icon: const Icon(Icons.local_pharmacy)),
           // ignore: deprecated_member_use
           IconButton(onPressed: (){}, icon: const Icon(Icons.local_pharmacy), style: ButtonStyle(backgroundColor:MaterialStateProperty.all(colors.primary), ),),

          ],
        ),
      ),
    );
  }
}
