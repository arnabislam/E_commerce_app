import 'package:e_commerce/utils/size.dart';
import 'package:flutter/material.dart';

class AddNewAddress extends StatelessWidget {
  const AddNewAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add new Address"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(rSize.defaultSpace),
          child: Form(
              child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person), labelText: "Name"),
              ),
              SizedBox(
                height: rSize.spaceBtwInputFields,
              ),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone_android), labelText: "Phone"),
              ),
              SizedBox(
                height: rSize.spaceBtwInputFields,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.safety_check),
                          labelText: "Street"),
                    ),
                  ),
                  SizedBox(
                    width: rSize.spaceBtwInputFields,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.code_sharp),
                          labelText: "Street"),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: rSize.spaceBtwInputFields,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.location_city_outlined),
                          labelText: "City"),
                    ),
                  ),
                  SizedBox(
                    width: rSize.spaceBtwInputFields,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.real_estate_agent_rounded),
                          labelText: "State"),
                    ),
                  ),
                ],
              ),
              SizedBox(height: rSize.spaceBtwInputFields,),

              TextFormField(decoration: InputDecoration(labelText: "Country",prefixIcon:Icon(Icons.wordpress)),),
              SizedBox(height: rSize.spaceBtwInputFields,),
              SizedBox(width:double.infinity,child: ElevatedButton(onPressed: (){}, child: Text("Save")))
            ],
          )),
        ),
      ),
    );
  }
}
