class SignInWidget {
  final Color primaryColor = Colors.red; // Define primaryColor

  Container view() {
    return Container(
      height: 400,
      color: primaryColor,
      // child: Center(child: Image.asset("assets/images/splashicon.jpg",height: 150,),),
    );
  }

  Container aboutView() {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        border: Border.all(style: BorderStyle.solid),
      ),
    );
  }
}