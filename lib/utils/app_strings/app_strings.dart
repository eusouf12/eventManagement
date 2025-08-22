class   AppStrings {
  static RegExp passRegexp = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.{8,}$)');
  static RegExp emailRegexp = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  static const String fieldCantBeEmpty = "Field can't be empty";
  static const String emailFieldCantBeEmpty = "Please enter your email";
  static const String passwordFieldCantBeEmpty = "Please enter your password";
  static const String checkNetworkConnection = "Check network connection";
  static const String enterThe8Character = "Please Enter The 8 character";
  static const String passwordNotMatch = "Passwords do not match";

  //================== Custom Controller String ===================//
  static const String plan = "Plan, Join,\nCelebrate – All in\nOne App";
  static const String getStarted = "Get Started";
  static const String welcomeBack = "Welcome Back";
  static const String welcomeBackTitle = "Please login to your account";
  static const String email = "Email";
  static const String enterYourEmail = "enter your email";
  static const String enterName = "Enter a name";
  static const String exampleEmail = "example@ex.com";
  static const String password = "Password";
  static const String confirmPassword = "Confirm Password";
  static const String passwordHint = "******";
  static const String enterYourPassword = "enter your password";
  static const String forgetPassword = "Forget Password?";
  static const String signInWithGoogle = "Sign in with Google";
  static const String login = "Login";
  static const String donTHaveAccount = "Don’t have an account? ";
  static const String alreadyHaveAccount = "Already have an account? ";
  static const String signUp = "Sign up";
  static const String createYourAccount = "Create your account by email";
  static const String continueText = "Continue";
  static const String continueTextBan = "Continue";
  static const String chooseYourRole = "Choose Your Role";
  static const String chooseYourRoleTitle = "What type of account you want?\nWho are you? Select an option\nto continue";


  ///============================ Common Auth =========================//
  static const String report = "Report";
  static const String person = "Person";
  static const String createEvent = "Create Event";
  static const String notification = "Notification";
  static const String myEvent = "My Event";
  static const String caption = "Caption";
  static const String addMessage = "Add a Message";
  static const String writeCaption = "Write a caption";
  static const String whatOnYourMind = "What’s on your mind";
  static const String search = "Search";
  static const String search2 = "Search";


///============================ Common Auth =========================//

  static const String  findBest= 'Find Best Events\nNear You';
  static const String  nonEvents= 'Non-Events';



}