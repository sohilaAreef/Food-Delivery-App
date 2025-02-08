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
    final size = MediaQuery.of(context).size;
    return ListTile(
      leading: Icon( icon,
      size: size.height * .03,
      ),
      title: Text(title,
      style: Theme.of(context).textTheme.titleMedium,
      ),
    
      onTap: (){},
      subtitle: subtitle != null ? Text(subtitle) : null,
      trailing: Icon(Icons.chevron_right, color: Theme.of(context).primaryColor),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/images/sohila.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Sohila Arif',
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              myAccount(context, text: 'Orders', num: 20),
              myAccount(context, text: 'Vouchers', num: 5),
            ],
          ),
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
    );
  }
}