import 'package:flutter/material.dart';
class Home extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Material(
    color: Colors.orange[200],
   child: Center(
      child:Container(
        padding: EdgeInsets.only(left: 10.0, right: 20.0),
      alignment: Alignment.center,
      color:Colors.pinkAccent,
      child: Column(
        children: <Widget>[Row(
        children: <Widget>[
             Text("1.Spice Jet   ",textDirection:TextDirection.ltr,
             style: TextStyle( 
             color: Colors.black87 ,
               fontSize: 40.0 , ), 
                 ),
          Expanded( child:
          Text("Delhi to Mumbai",textDirection:TextDirection.ltr,
           style: TextStyle( decoration: TextDecoration.underline,
           color: Colors.black87 ,
            fontSize:30.0 , ), 
             ),
          ),
          

        ],
      ),
      Row(
        children: <Widget>[
             Text("2.Air India   ",textDirection:TextDirection.ltr,
             style: TextStyle( 
             color: Colors.black87 ,
               fontSize: 40.0 , ), 
                 ),
          Expanded( child:
          Text("Delhi to Goa",textDirection:TextDirection.ltr,
           style: TextStyle( decoration: TextDecoration.underline,
           color: Colors.black87 ,
            fontSize:30.0 , ), 
             ),
          ),
          ],
      ),
      flight(),
      booking_button()
      
      ],
      ) , 
       //width: 200,
      //height: 700,
      margin: EdgeInsets.all(30.0),
    ) ,
    )
    ); 
  }

}
class flight extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage assetImage=AssetImage('images/plane.png');
    Image image=Image(image: assetImage,);
    return Container(child: image,);
  }

}
class booking_button extends StatelessWidget
{
 

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      width: 250,
      height: 50,
      child: RaisedButton( 
        color:Colors.white,
        child: Text("Book Your Flight",style: TextStyle(fontSize: 30.0),),
    
        elevation: 10.0,
        onPressed: (){
        bookFlight(context);
        }
        ,),
      
    );
  }
void bookFlight(BuildContext context)
{var alertDialog=AlertDialog(
  title: Text("Your Booking Has Been Done Successfully", style:TextStyle(fontSize: 20.0),),
  content: Text("Have ha pleasant flight ",style: TextStyle(fontSize: 14.0),),
);
showDialog(
  context: context,
  builder: (BuildContext)=>  alertDialog
  
);


}
}