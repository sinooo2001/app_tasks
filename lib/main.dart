import 'package:flutter/material.dart';

void main() {
  runApp(ApssTasks());
}

//fittedBoox

/*class ApssTasks extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
       title: "",
       home: Scaffold(
       appBar: AppBar(title: Text('Fitted Box')),
    body: Center(
    child: Container(
    color: Colors.blue,
    width: 300,
    height: 300,
    child: FittedBox(
      fit: BoxFit.scaleDown,
    child: Text('Flutter',style: TextStyle(fontSize: 200)
   ))))),);
  }}*/

//Dropdown Mnu
/* class ApssTasks extends StatelessWidget {
  List<String> itemsList =['Item1','Item2','Item3','Item4'];
  String? selectedItem= 'Item1';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "",
         home: Scaffold(
        appBar: AppBar(title:Text('Dropdown Menu')),
             body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Center(child:Text('Dropdown Menu', style: TextStyle(fontSize: 25))),
          SizedBox(height: 20),
          Center(
            child:DropdownButton<String>(
              value: selectedItem,
              items: itemsList
              .map((item) => DropdownMenuItem (
              value: item,
                child:Text(item, style:TextStyle(fontSize: 25))))
                .toList(),
                onChanged: (item)=> setState(()=>selectedItem=item)),
            ),],),), );}

  setState(String? Function() param0) {}}*/

//showDatepicker
/*class ApssTasks extends StatefulWidget{
  @override
  State<ApssTasks> createState() => _ApssTaskstState();
}
  class _ApssTaskstState extends State<ApssTasks> {
  DateTime date= DateTime.now();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "",
        home: Scaffold(
        //appBar: AppBar()
         body: Center(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${date.day}/${date.month}/${date.year}',
                style:const TextStyle(fontSize: 30),),
            const SizedBox(height: 10),
            ElevatedButton(child: const Text('Selet a date',style: TextStyle(fontSize: 20)),
              onPressed: ()async{
                DateTime? newDate= await showDatePicker(context: context, initialDate: date,
              firstDate: DateTime(2000),
                lastDate: DateTime(2100),);
                if(newDate==null) return;
                setState(() {
                  date=newDate;
                });

              },),
          ],),)),);}}*/

//Timepicker
class ApssTasks extends StatefulWidget{
  @override
  State<ApssTasks> createState() => _ApssTaskstState();
}

class _ApssTaskstState extends State<ApssTasks> {
  TimeOfDay time=TimeOfDay(hour: 07, minute: 30);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "",
        home: Scaffold(
        appBar: AppBar(title: Text('Fitted Box')),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('${time.hour}:${time.minute}',
          style: const TextStyle(fontSize: 30),),
        const SizedBox(height: 10),
        ElevatedButton(child: const Text('select tim',
            style: TextStyle(fontSize: 20)),
        onPressed: () async{
          TimeOfDay? newTime= await
          showTimePicker(context: context, initialTime: time,);
            if(newTime==null) return;

            setState(() {
              time=newTime;
            });

        },
        ),
        ],
      ),
    ),
        ),
    ); }
}
//card

/*class ApssTasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "card",
      home: Scaffold(
          appBar: AppBar(),
          body: Card(
            color: Colors.red,
            elevation: 100,
            shadowColor: Colors.blue,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: Colors.black, width: 4)),
            child: Text(
              "Sina ",
              style: TextStyle(fontSize: 30),
            ),
          )),
    );
  }
}*/
