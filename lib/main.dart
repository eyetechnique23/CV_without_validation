import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const HomeRoute(),
      '/first': (context) => const FirstRoute(),
      '/second': (context) => const SecondRoute(),
      '/third': (context) => const ThirdRoute(),
    },
  )); //MaterialApp
}

class HomeRoute extends StatelessWidget {
  const HomeRoute({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundColor: Colors.blueGrey,
              backgroundImage: AssetImage('image/f3.jpg'),
            ),

            const Text(
              'LOG IN',
              style: TextStyle(
                fontFamily:'SourOrbitron',
                fontSize: 40,
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Form(
                  child: Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                              labelText: 'Email',
                              hintText: 'Enter email',
                              prefixIcon: Icon(Icons.email),
                              prefixIconColor: Colors.blueGrey,
                              border: OutlineInputBorder(),
                            ),
                            onChanged: (String value) {},
                            validator: (value) {
                              return value!.isEmpty
                                  ? 'Please enter email'
                                  : null;
                            },
                          )),
                      const SizedBox(height: 30.0),
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35),
                          child: TextFormField(
                            obscureText: true,
                            keyboardType: TextInputType.visiblePassword,
                            decoration: const InputDecoration(
                              labelText: 'Password',
                              hintText: 'Enter password',
                              prefixIcon: Icon(Icons.lock),
                              prefixIconColor: Colors.black87,
                              border: OutlineInputBorder(),
                            ),
                            onChanged: (String value) {},
                            validator: (value) {
                              return value!.isEmpty
                                  ? 'Please enter password'
                                  : null;
                            },
                          )),
                      const SizedBox(height: 30.0),
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 150),
                          child: MaterialButton(
                              minWidth: double.infinity,
                              onPressed: () {
                                Navigator.pushNamed(context, '/first');
                              },
                              color: Colors.black,
                              textColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Text('Login'))),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        title: const Text('Curriculum Vitae'),
        backgroundColor: Colors.blueGrey,
      ), // AppBar
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundColor: Colors.blueGrey,
              backgroundImage: AssetImage('image/a2.jpg'),
            ),
            Text(
              'Jayson Mamanta',
              style: TextStyle(
                fontFamily: 'NotoSansMono',
                fontSize: 30.0,
                color: Colors.black38,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Information Technology',
              style: TextStyle(
                fontFamily: 'Source Sans 3',
                color: Colors.blueGrey,
                fontSize: 20.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone_android,
                    color: Colors.black87,

                  ),
                  title: Text(
                    '096939012260',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontFamily: 'Source Sans 3',
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.black87,
                ),
                title: Text(
                  'mamantajayson@gmail.com',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Source Sans 3'),
                ),

              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.black87,
                ),
                title: Text(
                  'Buenlag Calasiao Pangasinan',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Source Sans 3'),
                ),

              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(30),
                ),
                primary: Colors.black, // background
                onPrimary: Colors.white70, // foreground
              ),
              child: const Text('Educational Background'),
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
            ), // ElevatedButton
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(30),
                ),
                primary: Colors.black, // background
                onPrimary: Colors.white70, // foreground
              ),
              child: const Text('Background'),
              onPressed: () {
                Navigator.pushNamed(context, '/third');
              },
            ),
          ],

        ),

      ),
    ); // Scaffold
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Education"),
        backgroundColor: Colors.blueGrey,
      ), // AppBar
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.blueGrey,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 1.0),
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Colors.black,
                ),
                title: Text(
                  'Tertiary Education ',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Source Sans 3',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text('College'
                ),

              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                title: Text(
                  'Philippine College of Science and Technology',
                  style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'Source Sans 3',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text('Bachelor of Science in Information Technology 2019-2023'
                ),

              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 1.0),
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Colors.black,
                ),
                title: Text(
                  'Secondary Education',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Source Sans 3'),
                ),

              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                title: Text(
                  'Calasiao Comprehensive National High School',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Source Sans 3',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text('Senior High School 2016-2018'
                ),

              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                title: Text(
                  'Caalasiao Comprehensive National High School',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Source Sans 3',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text('Junior High School 2012-2016'
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 1.0),
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Colors.black,
                ),
                title: Text(
                  'Primary Education',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Source Sans 3'),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                title: Text(
                  'Buenlag Elementary School',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Source Sans 3',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text('2006-2012'
                ),
              ),
            ),
          ],

        ),
      ), // Center
    ); // Scaffold
  }
}

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Professional Background"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.black,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.account_box_outlined,
                  color: Colors.black,
                ),
                title: Text(
                  "Professional Summary",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Source Sans 3',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text("I'm a programmer and a freshly graduated out of college"
                ),

              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.album,
                  color: Colors.black,
                ),
                title: Text(
                  'Skills and Abilities',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Source Sans 3',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text("Trustworthy, Hardworking, Loyalty "
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.web_rounded,
                  color: Colors.black,
                ),
                title: Text(
                  'Web-Development',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Source Sans 3',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text("I have a experience to developing website using PHP and knowledge to front-end"
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Colors.black,
                ),
                title: Text(
                  'Certificates',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Source Sans 3',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text("NCII holder in Computer System Servicing "
                ),
              ),
            ),
          ],

        ),
      ), /// AppBar

    ); // Scaffold
  }
}

