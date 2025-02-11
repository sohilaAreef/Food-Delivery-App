import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  Widget myAccount(BuildContext context, {required String text, required int num})
  {
    return Column(
    
      children: [
        SizedBox(height: 20),
        Text(
          num.toString(),
          style:
           Theme.of(context).textTheme.headlineMedium!.copyWith(
             fontWeight: FontWeight.bold,
             color: Theme.of(context).primaryColor,
           )
        ),

          SizedBox(height: 8),
          Text(
            text,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              color: Colors.grey,
            ),
          )
      ]
    );
  }
  Widget AccountAddtion(BuildContext context,{required IconData icon, required String title,String ?subtitle})
  {
    final isLandScape = MediaQuery.of(context).orientation == Orientation.landscape;
    final size = MediaQuery.of(context).size;
    

    return ListTile(
      leading: Icon( icon,
      size: isLandScape? size.height * 0.1: size.height * .03,
      ),
      title: Text(title,
      style: Theme.of(context).textTheme.titleMedium,
      ),
    
      onTap: (){},
      subtitle: subtitle != null ? Text(subtitle) : null,
      trailing: Icon(Icons.chevron_right, color: Theme.of(context).primaryColor,
      size: size.height * 0.1,),
    );
  }
  Widget photoName(double width, double height){
    return Container(
              height: height,
              width:  width,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/sohila.png'),
                  fit: BoxFit.cover,
                ),
              ),
            );
  }

  @override
  Widget build(BuildContext context) {
    final isLandScape = MediaQuery.of(context).orientation == Orientation.landscape;
    final size = MediaQuery.of(context).size;
    final Name = Text(
            'Sohila Arif',
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          );
    return SizedBox(
      height: size.height,
      child: SingleChildScrollView(
        child: Column(
          children: [ 
            if(!isLandScape) ...[
             photoName(size.width * 0.5, size.height * 0.5),
            Name,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                myAccount(context, text: 'Orders', num: 20),
                myAccount(context, text: 'Vouchers', num: 5),
              ],
            ),],
            if(isLandScape) ...[
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      photoName(size.width * 0.3, size.height * 0.5),
                      SizedBox(height: 8,),
                      Name
                    ],
                  ),
                  Column(
              children: [
                myAccount(context, text: 'Orders', num: 20),
                myAccount(context, text: 'Vouchers', num: 5),
              ],)
                ],
              )
            ],
            Divider(
              
            ),
            AccountAddtion(context,icon:  Icons.shopping_cart, title: 'Past Orders'),
            Divider(
              
            ),
            AccountAddtion(context,icon: Icons.co_present, title: 'your vaouchers'),
            Divider(
              
            ),
          ],
          
        ),
      ),
    );
  }
}