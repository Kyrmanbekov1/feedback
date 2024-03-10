import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_13/presentation/models/email_model.dart';
import 'package:flutter_application_13/presentation/widgets/app_const.dart';
import 'package:flutter_application_13/presentation/widgets/custom_text_field.dart';
import 'package:flutter_application_13/presentation/widgets/dio_settings.dart';

class Registr extends StatelessWidget {
  const Registr({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controllermessage = TextEditingController();
    return  Scaffold(
      appBar: AppBar(
      
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: SizedBox(
                child: Text('Contact',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  
                ),
                
                ),
              ),
              
            ),
            SizedBox(
              height: 0,
            ),
            Padding(
              padding: const EdgeInsets.all(45.0),
              child: Center(child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quam duis vitae curabitur amet, fermentum lorem. ',
              textAlign: TextAlign.center,
              ),),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(child:CustomTextField(

              labelText: 'First Name',
              
              hinText: 'Name',
              controller: TextEditingController(),
        
            ), ),
            Expanded(child:CustomTextField(
            
              labelText: 'Last Name',
              
              hinText: 'LastName',
              controller: TextEditingController(),
        
            ), )
              ],
            ),
           
            CustomTextField(
              suffixIcon: Icon(Icons.post_add_sharp),
              labelText: 'Email',
              
              hinText: 'yourmail@gmail.com',
              controller: TextEditingController(),
        
            ),
            CustomTextField(
              
              suffixIcon: Icon(Icons.phone),
              labelText: 'Phone',
              
              hinText: 'yourmail@gmail.com',
              controller: TextEditingController(),
        
            ),
            CustomTextField(
              maxlines: 6,
              labelText: 'Message',
              
              hinText: 'Your message',
              controller: controllermessage,
        
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: TextButton(onPressed:()=> sendEmail(controllermessage), 
                child: Text(
                  'Enter',
                  style: TextStyle(
                    color: Colors.white
                  ),
                  )
                  ,),
              ),
            )
          ],
          
        ),
      ),
    );
  }
}

Future <void> sendEmail(  controllermessage ) async {
  final Dio dio = DioSettings().dio;
  
  
  await dio.post('https://api.emailjs.com/api/v1.0/email/send?',
  data: EmailModel(
    templateId: AppConsts.template_id,
    serviceId: AppConsts.service_id,
    userId: AppConsts.user_id,
    accessToken: AppConsts.accessToken,
    templateParams: TemplateParams(
      fromName: 'Adil',
      toName:  'Asan',
      message: controllermessage.text ,
    ),
  ).toJson()
  );
}

