import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) =>  HomeRoute(),
      '/profileRoute': (context) =>  ProfileRoute(),
      '/second': (context) => SecondRoute(),
      '/third': (context) =>  ThirdRoute(),
      '/fourth': (context) =>  FourthRoute(),
      '/fifth': (context) =>  FifthRoute(),
    },
  )); //MaterialApp
}

class HomeRoute extends StatelessWidget {
  HomeRoute({Key key}) : super(key: key);

  final GlobalKey<FormState> _formKey =  GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.white,
              Colors.deepPurple,
            ],
          )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 120.0),
              CircleAvatar(
                radius: 120.0,
                backgroundImage: AssetImage('images/jude.jpg'),
              ),
              const SizedBox( height: 20.0),
              const Text(
                'LOGIN HERE',
                style: TextStyle(
                  fontFamily:'Sheep',
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 35),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                labelText: 'Email',
                                hintText: 'Enter email',
                                prefixIcon: Icon(Icons.email),
                                border: OutlineInputBorder(),
                              ),
                              onChanged: (String value) {},
                              validator: (value) {
                                if (value == null || value.isEmpty)
                                  return 'Email required';
                              },
                            )),
                        SizedBox(height: 20.0),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 35),
                            child: TextFormField(
                              obscureText: true,
                              keyboardType: TextInputType.visiblePassword,
                              decoration: InputDecoration(
                                labelText: 'Password',
                                hintText: 'Enter password',
                                prefixIcon: Icon(Icons.lock),
                                border: OutlineInputBorder(),
                              ),
                              onChanged: (String value) {},
                              validator: (value) {
                                if(value == null || value.isEmpty)
                                  return 'Password is required';
                              },
                            )),
                        SizedBox(height: 20.0),
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState.validate()) {
                              Navigator.pushNamed(context, '/profileRoute');
                              return;
                            }
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Login'), // <-- Text
                              SizedBox(
                                width: 10,
                              ),
                              Icon( // <-- Icon
                                Icons.login,
                                size: 30.0,
                                color: Colors.white70,
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextButton(
                              style: TextButton.styleFrom(
                                  textStyle: const TextStyle(fontSize: 18)
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/fourth');
                              },
                              child: const Text('Create Account'),
                            ),
                            SizedBox(width: 10.0),
                            TextButton(
                              style: TextButton.styleFrom(
                                  textStyle: const TextStyle(fontSize: 18)
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/fifth');
                              },
                              child: const Text('Forgot Password'),
                            )
                          ],

                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileRoute extends StatelessWidget {
  const ProfileRoute({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.white,
                Colors.deepPurple,
              ],
            )),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 120.0),
                CircleAvatar(
                  radius: 120.0,
                  backgroundImage: AssetImage('images/jude3.jpg'),
                ),
                Text(
                  'Jude Rommel D. Bravo',
                  style: TextStyle(
                    fontFamily: 'Camacho',
                    fontSize: 30.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'BSIT4 - BLOCK1',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Colors.black,
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
                        Icons.phone,
                        color: Colors.deepPurpleAccent,
                      ),
                      title: Text(
                        '09705054344',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20.0,
                        ),
                      ),
                    )),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.deepPurpleAccent,
                    ),
                    title: Text(
                      'teng.delrio@gmail.com',
                      style: TextStyle(
                          fontSize: 19.0,
                          color: Colors.black,
                          fontFamily: 'Source Sans Pro'),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.house,
                      color: Colors.deepPurpleAccent,
                    ),
                    title: Text(
                      '161 Namolan East, Lingayen, Pangasinan',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                          fontFamily: 'Source Sans Pro'),
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // background
                    onPrimary: Colors.deepPurpleAccent, // foreground
                  ),
                  child: const Icon(Icons.school),
                  onPressed: () {
                    Navigator.pushNamed(context, '/second');
                  },
                ), // ElevatedButton
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // background
                    onPrimary: Colors.deepPurpleAccent, // foreground
                  ),
                  child: const Icon(Icons.person),
                  onPressed: () {
                    Navigator.pushNamed(context, '/third');
                  },
                ),
              ],
            ),
          ),
        )); // Scaffold
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.white,
                Colors.deepPurple,
              ],
            )),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 120.0),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.school,
                      color: Colors.deepPurpleAccent,
                    ),
                    title: Text(
                      'Tertiary Education ',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Times New Roman',
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    subtitle: Text('Philippine College of Science and Technology'
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                  child: ListTile(
                    title: Text(
                      'Bachelor of Science in Information Technology',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                      ),
                    ),
                    subtitle: Text(
                        'Batch 2019-2023'),
                  ),
                ),

                Card(
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.school,
                      color: Colors.deepPurpleAccent,
                    ),
                    title: Text(
                      'Senior High School',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Times New Roman'),
                    ),
                  ),
                ),

                Card(
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                  child: ListTile(
                    title: Text(
                      'Pangasinan Nationanl High School',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                      ),
                    ),
                    subtitle: Text(
                        'Batch 2016-2018'),
                  ),
                ),

                Card(
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.school,
                      color: Colors.deepPurpleAccent,
                    ),
                    title: Text(
                      'Secondary Education',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Times New Roman'),
                    ),
                  ),
                ),

                Card(
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                  child: ListTile(
                    title: Text(
                      'Pangasinan Nationanl High School',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                      ),
                    ),
                    subtitle: Text(
                        'Batch 2012-2016'),
                  ),
                ),

                Card(
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.school,
                      color: Colors.deepPurpleAccent,
                    ),
                    title: Text(
                      'Primary Education',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Times New Roman'),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 25.0),
                  child: ListTile(
                    title: Text(
                      'Namolan Elementary School',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                      ),
                    ),
                    subtitle: Text('Batch 2006-2012'),
                  ),
                ),
              ],
            ),
          ), // Center
        )); // Scaffold
  }
}

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.white,
                Colors.deepPurple,
              ],
            )),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 180.0),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.account_box,
                      color: Colors.deepPurpleAccent,
                    ),
                    title: Text(
                      "Professional Summary",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                      ),
                    ),
                    subtitle: Text(
                        "I'm freshly graduated out of college"),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.album,
                      color: Colors.deepPurpleAccent,
                    ),
                    title: Text(
                      'Skills and Abilities',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                      ),
                    ),
                    subtitle:
                    Text("Multi-Tasking and Willingness"),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.web_rounded,
                      color: Colors.deepPurpleAccent,
                    ),
                    title: Text(
                      'Web-Development',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                      ),
                    ),
                    subtitle: Text(
                        "I have a experience to developing website using PHP and knowledge to front - end"),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.school,
                      color: Colors.deepPurpleAccent,
                    ),
                    title: Text(
                      'Certificates',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                      ),
                    ),
                    subtitle: Text(
                        "NCII holder in Computer System Servicing from PHILCST"),
                  ),
                ),
              ],
            ),
          ),

          /// AppBar
        )); // Scaffold
  }
}
class FourthRoute extends StatelessWidget {
  FourthRoute({Key key}) : super(key: key);

  final GlobalKey<FormState> _formKey =  GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.white,
                Colors.deepPurple,
              ],
            )),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 120.0),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 35),
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  labelText: 'Name',
                                  hintText: 'Enter Full Name',
                                  prefixIcon: Icon(Icons.person),
                                  border: OutlineInputBorder(),
                                ),
                                onChanged: (String value) {},
                                validator: (value) {
                                  if (value == null || value.isEmpty)
                                    return 'Full Name is required';
                                },
                              )),
                          SizedBox(height: 20.0),
                          Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 35),
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  labelText: 'Address',
                                  hintText: 'Enter Address',
                                  prefixIcon: Icon(Icons.person),
                                  border: OutlineInputBorder(),
                                ),
                                onChanged: (String value) {},
                                validator: (value) {
                                  if (value == null || value.isEmpty)
                                    return 'Address is required';
                                },
                              )),
                          SizedBox(height: 20.0),
                          Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 35),
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  labelText: 'Email',
                                  hintText: 'Enter email',
                                  prefixIcon: Icon(Icons.email),
                                  border: OutlineInputBorder(),
                                ),
                                onChanged: (String value) {},
                                validator: (value) {
                                  if (value == null || value.isEmpty)
                                    return 'Email is required';
                                },
                              )),
                          SizedBox(height: 20.0),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 35),
                              child: TextFormField(
                                obscureText: true,
                                keyboardType: TextInputType.visiblePassword,
                                decoration: InputDecoration(
                                  labelText: 'Password',
                                  hintText: 'Enter password',
                                  prefixIcon: Icon(Icons.lock),
                                  border: OutlineInputBorder(),
                                ),
                                onChanged: (String value) {},
                                validator: (value) {
                                  if (value == null || value.isEmpty)
                                    return 'Password is required';
                                },
                              )),
                          SizedBox(height: 20.0),
                          ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState.validate()) {
                                Navigator.pushNamed(context, '/first');
                                return;
                              }
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('Create'), // <-- Text
                                SizedBox(
                                  width: 10,
                                ),
                                Icon( // <-- Icon
                                  Icons.login,
                                  size: 27.0,
                                  color: Colors.white70,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ));
  }
}
class FifthRoute extends StatelessWidget {
  FifthRoute({Key key}) : super(key: key);

  final GlobalKey<FormState> _formKey =  GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.white,
                Colors.deepPurple,
              ],
            )),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 120.0),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 35),
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  labelText: 'Email',
                                  hintText: 'Enter Email',
                                  prefixIcon: Icon(Icons.mail),
                                  border: OutlineInputBorder(),
                                ),
                                onChanged: (String value) {},
                                validator: (value) {
                                  if (value == null || value.isEmpty)
                                    return 'Email is required';
                                },
                              )),
                          SizedBox(height: 20.0),
                          Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 35),
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  labelText: 'Current Password',
                                  hintText: 'Enter Current Password',
                                  prefixIcon: Icon(Icons.person),
                                  border: OutlineInputBorder(),
                                ),
                                onChanged: (String value) {},
                                validator: (value) {
                                  if (value == null || value.isEmpty)
                                    return 'Password is required';
                                },
                              )),
                          SizedBox(height: 20.0),
                          Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 35),
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  labelText: 'New Password',
                                  hintText: 'Enter New Password',
                                  prefixIcon: Icon(Icons.lock),
                                  border: OutlineInputBorder(),
                                ),
                                onChanged: (String value) {},
                                validator: (value) {
                                  if (value == null || value.isEmpty)
                                    return 'Password is required';
                                },
                              )),
                          SizedBox(height: 20.0),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 35),
                              child: TextFormField(
                                obscureText: true,
                                keyboardType: TextInputType.visiblePassword,
                                decoration: InputDecoration(
                                  labelText: 'Password',
                                  hintText: 'Reenter New Password',
                                  prefixIcon: Icon(Icons.lock),
                                  border: OutlineInputBorder(),
                                ),
                                onChanged: (String value) {},
                                validator: (value) {
                                  if (value == null || value.isEmpty)
                                    return 'Password is required';
                                },
                              )),
                          SizedBox(height: 20.0),
                          ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState.validate()) {
                                Navigator.pushNamed(context, '/first');
                                return;
                              }
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('Submit'), // <-- Text
                                SizedBox(
                                  width: 10,
                                ),
                                Icon( // <-- Icon
                                  Icons.arrow_forward_ios,
                                  size: 27.0,
                                  color: Colors.white70,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ));
  }
}