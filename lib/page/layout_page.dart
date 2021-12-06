import 'package:flutter/material.dart';

class LayoutPage extends StatelessWidget {
  const LayoutPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text("Tarea"),
      ),
      body:  
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [ 
            Container(
              alignment: Alignment.topCenter,
              width: size.width,
              child: Image.network("https://viajes.nationalgeographic.com.es/medio/2018/03/01/machu-picchu_5ff969ae_1280x720.jpg"),
            ),         
            _containerTitulo()  ,
            _botones()  ,
            _texto()  
          ],
        ),
    );
  }

  Widget _containerTitulo() {

    var stars = Row(
      mainAxisSize: MainAxisSize.min,

      children: [
        Icon(Icons.star, color: Colors.orange),
        Text("60")
      ],
    );

    return Container(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: 
      Column(
        
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            title: Text('Machu Picchu',style: TextStyle(
            color: Colors.black,fontWeight: FontWeight.w900,fontSize: 17,),),
            subtitle: Text('Ubicado en el departamento de Cusco.'),     
            trailing:stars,
            
          ),   
          
              
        ],
      ),
      
    );
  }

  Widget _botones(){
     const descTextStyle = TextStyle(
      color: Colors.lightBlue,
      fontWeight: FontWeight.w400,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 14,
      height: 2,
    );
    return DefaultTextStyle.merge(
              style: descTextStyle,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.call, color: Colors.lightBlue),
                        const Text('CALL')                        
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.near_me_sharp, color: Colors.lightBlue),
                        Text('ROUTE')
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.share, color: Colors.lightBlue),
                        const Text('SHARE')
                      ],
                    ),
                  ],
                ),
              ),
            ) ;  
  }

  Widget _texto(){
    return Container(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),      
        child:         
        Text(  
          "Machu Picchu fue declarado Santuario Histórico Peruano en 1981 y está en la Lista del Patrimonio de la Humanidad de la Unesco desde 1983, como parte de todo un conjunto cultural y ecológico conocido bajo la denominación Santuario histórico de Machu Picchu. El 7 de julio de 2007 Machu Picchu fue declarada como una de las nuevas siete maravillas del mundo moderno en una ceremonia realizada en Lisboa (Portugal), que contó con la participación de cien millones de votantes en el mundo entero. Machu Picchu fue votada como una de las Nuevas Siete Maravillas del Mundo en una encuesta mundial en Internet."
          ,textAlign: TextAlign.justify) 
        , 
    );
    
  }


}