// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';

class Strings implements Translations {
// Home page
  static const String LOCATION = "Location";
  static const String JAKARTA = "Jakarta, Indonesia";
  static const String SEARCHSOMETHING = "Search something...";
  static const String THEBESTCAR = "The Best Car";
  static const String HEREBESTCAR = "Here are some of the\nbest cars this year";
  static const String READMORE = "Read More";
  static const String CATEGORY = "Category";
  static const String NEW = "New";
  static const String USED = "Used";
  static const String BRAND = "Brand";
  static const String OTHER = "Other";
  static const String RECOMMENDATION = "Recommendation";
  static const String SEEALL = "See all";
  static const String TOPDEAL = "Top Deal";

//Details page
  static const String TESLA = "Tesla";
  static const String TESLAMODEL = "Tesla Model S";
  static const String MI = "mi";
  static const String RANGE = "Range (est.)";
  static const String MPH = "mph";
  static const String TOPSPEED = "Top Speed";
  static const String SEC = "sec";
  static const String MPH060 = "0-60 mph";
  static const String SPESIFICATION = "Spesification";
  static const String EXPLENOFSPESIFICATION =
      "The currently enabled features require active driver\nsupervision and do not make the vehicle autonomous. \nThe activation and use of these features are \ndependent on achieving reliability far.\n";
  static const String PRICE = "Price";
  static const String CALL = "Call";

  // Buttom Nav bar
  static const String HOME = "Home";
  static const String EXPLORE = "Explore";
  static const String MESSAGE = "Message";
  static const String PROFILE = "Profile";

  //onboarding
  static const String FINDDREEMCAR = "Find Your Dream Car";
  static const String FINDTHECAR =
      "Find the car of your dreams from \nthe world's largest car market";
  static const String SELLYOURCAR = "Sell Your Car";
  static const String POSTYOURAS =
      "Post your ad to interested buyers\naround the world";
  static const String LETSGETSTARTED = "Let’s Get Started";
  static const String SIGNUPORLOGIMN =
      "Sign up or log in to find out the\nbest car for you";
  static const String ASGUEST = "Continue as a guest";
  static const String GETSTARTED = "Get Started";
  static const String SKIP = "Skip";

// auth

  static const String CREATEACCOUNT = "Create Account";
  static const String SIGNUPPANDGETSTARTED = "Sign up and get started";
  static const String NAME = "Name";
  static const String GOTOHOME = "Go To Home";
  static const String LOGIN = "Log In";
  static const String CONTINUEWITHGOOGLE = "Continue with Google";
  static const String CONTINUEWITHGMAIL = "Continue with Gmail";
  static const String DONTHAVEACCOUNT = "Don’t have an account?";
  static const String SIGNUP = " Sign Up";
  static const String OR = "Or";
  static const String FORGETPASSWRD = "Forgot Password?";
  static const String PASSWORD = "Password";
  static const String EMAIL = "Email";
  static const String LOGINTOYOURACCOUNT = "Log in to your account";
  static const String HIWELCOMEBACK = "Hi! Welcome Back";
  static const String PHONENUMBER = "Phone Number";
  static const String SEARCHCOUNTRYHERE = "Search Country Here";
  static const String NICETOSEEYOUAGAIN =
      "Nice to see you again. Let’s find your \nfavorite car!";
  static const String SENDCODENUMBER = "Send Code Number";
  static const String ALMOSTDONE = "Almost done!";
  static const String WESENTEMAIL =
      "We've sent an email to mark.lawson@gmail.com\nPlease check your inbox and follow instructions to \nreset your password";
  static const String RESEND = "Resend";
  static const String ENTERYOUREMAILWESEND =
      "Enter your email, we will send you\nthe confirmation code";

  static const String ENTERYOURPHONTORESEND =
      "Enter your Phone Number, we will send you\nthe confirmation code";

  static const String RESETPASSWORD = "Reset Password";
  static const String FORGETPASSWRD2 = "Forgot Password";
  static const String CONTINUE = "Continue";
  static const String ENTERYOURPHONNUMBER =
      "Enter your phone number, we will send you confirmation code";
  static const String PHONE = "Phone";
  static const String ENTERYOUEMAIL =
      "Enter your email, we will send you \nconfirmation code";
  static const String SELECTCONTACT =
      "Select which contact details should we use\nto reset your password";
  static const String ALLREADYHAVAACCOUNT = "Already have an account? ";
  static const String BACKTOLOGIN = "Back to Log In";
  static const String SUCESSREGISTER = "Successfully Registered";
  static const String YOURACCOUNTREGESTERD =
      "Your account has been registered succesfully,\n now let’s enjoy Car features!";
  static const String GREATE = "Great! Your password has been changed";
  static const String DONTWORRY =
      "Don't worry, We'll let you know\nif there's a problem with your account";

// Reset Password
  static const String VERIFY = "Verify";
  static const String VERIFICATIONCODE = "Verification Code";
  static const String CREATENEWPASSWORD = "Create New Password";
  static const String PLEASENTERYOURNEWPASS = "Please enter the new password";
  static const String NEWPASSWORD = "New password";
  static const String CONFIRMPASSWORD = "Confirm password";
  static const String RESENDCODEIN = "Resend code in";
  static const String WEAK = "Weak";
  static const String STANDARD = "Standard";
  static const String VERYSTRONG = "Very Strong";
  static const String STRONG = "Strong";
  static const String ENTERPASSWORD = "Enter Password";
  static const String PLEASVERIFICATIONCODE =
      "Please enter verification code, we sent \nit to number ";

// selling page

  static const String FORMATDOCPDFJPG = "Format DOC, PDF, JPG";
  static const String BROWSEFILES = "Browse files";

  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          LOCATION: "Location",
          JAKARTA: "Jakarta, Indonesia",
          SEARCHSOMETHING: "Search something...",
          THEBESTCAR: "The Best Car",
          HEREBESTCAR: "Here are some of the\nbest cars this year",
          READMORE: "Read More",
          CATEGORY: "Category",
          NEW: "New",
          USED: "Used",
          BRAND: "Brand",
          OTHER: "Other",
          RECOMMENDATION: "Recommendation",
          SEEALL: "See all",
          TOPDEAL: "Top Deal",
          TESLA: "Tesla",
          TESLAMODEL: "Tesla Model S",
          MI: "mi",
          RANGE: "Range (est.)",
          MPH: "mph",
          TOPSPEED: "Top Speed",
          SEC: "sec",
          MPH060: "0-60 mph",
          SPESIFICATION: "Specification",
          EXPLENOFSPESIFICATION:
              "The currently enabled features require active driver\nsupervision and do not make the vehicle autonomous.\nThe activation and use of these features are\ndependent on achieving reliability far.\n",
          PRICE: "Price",
          CALL: "Call",
          HOME: "Home",
          EXPLORE: "Explore",
          MESSAGE: "Message",
          PROFILE: "Profile",
          PHONENUMBER: "Phone Number",
          SEARCHCOUNTRYHERE: "Search Country Here",
          WEAK: "Weak",
          STANDARD: "Standard",
          VERYSTRONG: "Very Strong",
          STRONG: "Strong",
          ENTERPASSWORD: "Enter Password",
          FORMATDOCPDFJPG: "Format DOC, PDF, JPG",
          BROWSEFILES: "Browse files",
          HIWELCOMEBACK: "Hi! Welcome Back",
          LOGINTOYOURACCOUNT: "Log in to your account",
          EMAIL: "Email",
          PASSWORD: "Password",
          FORGETPASSWRD: "Forgot Password?",
          LOGIN: "Log In",
          OR: "Or",
          SIGNUP: "Sign Up",
          DONTHAVEACCOUNT: "Don’t have an account?",
          CONTINUEWITHGMAIL: "Continue with Gmail",
          CONTINUEWITHGOOGLE: "Continue with Google",
          NICETOSEEYOUAGAIN:
              "Nice to see you again. Let’s find your \nfavorite car!",
          GOTOHOME: "Go To Home",
          CREATEACCOUNT: "Create Account",
          SIGNUPPANDGETSTARTED: "Sign up and get started",
          NAME: "Name",
          SUCESSREGISTER: "Successfully Registered",
          YOURACCOUNTREGESTERD:
              "Your account has been registered succesfully,\n now let’s enjoy Car features!",
          BACKTOLOGIN: "Back to Log In",
          ALLREADYHAVAACCOUNT: "Already have an account? ",
          SELECTCONTACT:
              "Select which contact details should we use\nto reset your password",
          ENTERYOUEMAIL:
              "Enter your email, we will send you \nconfirmation code",
          ENTERYOURPHONNUMBER:
              "Enter your phone number, we will send you confirmation code",
          PHONE: "Phone",
          CONTINUE: "Continue",
          FORGETPASSWRD2: "Forgot Password",
          RESETPASSWORD: "Reset Password",
          ENTERYOUREMAILWESEND:
              "Enter your email, we will send you the \nconfirmation code",
          ALMOSTDONE: "Almost done!",
          WESENTEMAIL:
              "We've sent an email to mark.lawson@gmail.com\nPlease check your inbox and follow instructions to \nreset your password",
          RESEND: "Resend",
          ENTERYOURPHONTORESEND:
              "Enter your Phone Number, we will send you\n the confirmation code",
          SENDCODENUMBER: "Send Code Number",
          GREATE: "Great! Your password has been changed",
          DONTWORRY:
              "Don't worry, We'll let you know\nif there's a problem with your account",
          VERIFICATIONCODE: "Verification Code",
          PLEASVERIFICATIONCODE:
              "Please enter verification code, we sent \nit to number ",
          RESENDCODEIN: "Resend code in",
          VERIFY: "Verify",
          CREATENEWPASSWORD: "Create New Password",
          PLEASENTERYOURNEWPASS: "Please enter the new password",
          NEWPASSWORD: "New password",
          CONFIRMPASSWORD: "Confirm password",
          FINDDREEMCAR: "Find Your Dream Car",
          FINDTHECAR:
              "Find the car of your dreams from \nthe world's largest car market",
          SELLYOURCAR: "Sell Your Car",
          POSTYOURAS: "Post your ad to interested buyers\naround the world",
          LETSGETSTARTED: "Let’s Get Started",
          SIGNUPORLOGIMN: "Sign up or log in to find out the\nbest car for you",
          GETSTARTED: "Get Started",
          SKIP: "Skip",
        },
        'ar': {
          LOCATION: "الموقع",
          JAKARTA: "جاكرتا، إندونيسيا",
          SEARCHSOMETHING: "ابحث عن شيء...",
          THEBESTCAR: "أفضل سيارة",
          HEREBESTCAR: "إليك بعض من\nأفضل السيارات هذا العام",
          READMORE: "اقرأ المزيد",
          CATEGORY: "الفئة",
          NEW: "جديد",
          USED: "مستعمل",
          BRAND: "علامة تجارية",
          OTHER: "آخر",
          RECOMMENDATION: "توصية",
          SEEALL: "رؤية الكل",
          TOPDEAL: "أفضل عرض",
          TESLA: "تسلا",
          TESLAMODEL: "تسلا موديل S",
          MI: "ميل",
          RANGE: "المدى (تقريبي)",
          MPH: "ميل في الساعة",
          TOPSPEED: "السرعة القصوى",
          SEC: "ثانية",
          MPH060: "0-60 ميل في الساعة",
          SPESIFICATION: "المواصفات",
          EXPLENOFSPESIFICATION:
              "الميزات المفعلة حاليًا تتطلب إشراف نشط من السائق\nولا تجعل السيارة ذاتية القيادة.\nيعتمد تفعيل واستخدام هذه الميزات\nعلى تحقيق موثوقية عالية.\n",
          PRICE: "السعر",
          CALL: "اتصل",
          HOME: "الرئيسية",
          EXPLORE: "استكشاف",
          MESSAGE: "رسالة",
          PROFILE: "الملف الشخصي",
          PHONENUMBER: "رقم الهاتف",
          SEARCHCOUNTRYHERE: "ابحث عن المدينة هنا",
          WEAK: "ضعيف",
          STANDARD: "قياسي",
          VERYSTRONG: "قوي جدا",
          STRONG: "قوي",
          ENTERPASSWORD: "أدخل كلمةالسر",
          FORMATDOCPDFJPG: "DOC, PDF, JPG تنسيق",
          BROWSEFILES: "تصفح الملفات",
          HIWELCOMEBACK: "مرحباً بك مرة أخرى",
          LOGINTOYOURACCOUNT: "تسجيل الدخول إلى حسابك",
          EMAIL: "ايميل",
          PASSWORD: "كلمة السر",
          FORGETPASSWRD: "هل نسيت كلمة السر",
          LOGIN: "تسجيل الدخول",
          OR: "أو",
          SIGNUP: "تسجيل الدخول",
          DONTHAVEACCOUNT: "ليس لديك حساب؟",
          CONTINUEWITHGMAIL: " Gmail المتابعة باستخدام",
          CONTINUEWITHGOOGLE: "Google المتابعة باستخدام",
          NICETOSEEYOUAGAIN:
              "!يسعدنا رؤيتك مرة أخرى.\n دعنا نبحث عن سيارتك المفضلة",
          GOTOHOME: "العودة إلى الصفحة الرئيسية",
          CREATEACCOUNT: "انشاء حساب",
          SIGNUPPANDGETSTARTED: "تسجيل الدخول والبدء",
          NAME: "الاسم",
          SUCESSREGISTER: "تم التسجيل بنجاح",
          YOURACCOUNTREGESTERD:
              "!لقد تم تسجيل حسابك بنجاح،الآن دعنا نستمتع بمميزات السيارة",
          BACKTOLOGIN: "العودة إلى تسجيل الدخول",
          ALLREADYHAVAACCOUNT: " هل لديك حساب بالفعل؟",
          SELECTCONTACT:
              "حدد تفاصيل الاتصال التي يجب أن نستخدمها \nلإعادة تعيين كلمة المرور الخاصة بك",
          ENTERYOUEMAIL: "أدخل بريدك الإلكتروني، وسنرسل لك رمز التأكيد",
          ENTERYOURPHONNUMBER: "أدخل رقم هاتفك وسنرسل لك رمز التأكيد",
          PHONE: "الهاتف",
          CONTINUE: "أكمل",
          FORGETPASSWRD2: "نسيت كلمةالسر",
          RESETPASSWORD: "إعادة تعيين كلمة المرور",
          ENTERYOUREMAILWESEND:
              "أدخل بريدك الإلكتروني،\n وسنرسل لك رمز التأكيد",
          ENTERYOURPHONTORESEND: "أدخل رقم هاتفك،\n وسنرسل لك رمز التأكيد",
          ALMOSTDONE: "!تم الانتهاء تقريبا",
          WESENTEMAIL:
              "لقد أرسلنا بريدًا إلكترونيًا إلى mark.lawson@gmail.com،\n يرجى التحقق من صندوق الوارد الخاص بك\n واتباع التعليمات لإعادة تعيين كلمة المرور الخاصة بك",
          RESEND: "إعادة الإرسال",
          SENDCODENUMBER: "إرسال رقم الكود",
          GREATE: "رائع! لقد تم تغيير كلمة المرور\n الخاصة بك",
          DONTWORRY: "لا تقلق، سنخبرك إذا كانت\n هناك مشكلة في حسابك",
          VERIFICATIONCODE: "رمز التحقق",
          PLEASVERIFICATIONCODE:
              "الرجاء إدخال رمز التحقق، \nلقد أرسلناه إلى الرقم ",
          RESENDCODEIN: "إعادة إرسال الكود في",
          VERIFY: "تأكيد",
          CREATENEWPASSWORD: "إنشاء كلمة مرور جديدة",
          PLEASENTERYOURNEWPASS: "الرجاء إدخال كلمة المرور الجديدة",
          NEWPASSWORD: "كلمة المرور الجديدة",
          CONFIRMPASSWORD: "تأكيد كلمة المرور",
           FINDDREEMCAR: "ابحث عن سيارة أحلامك",
          FINDTHECAR:
              "ابحث عن سيارة أحلامك من أكبر سوق\n للسيارات في العالم",
          SELLYOURCAR: "بيع سيارتك",
          POSTYOURAS: "قم بنشر إعلانك للمشترين\n المهتمين حول العالم",
          LETSGETSTARTED: "لنبدأ",
          SIGNUPORLOGIMN: "سجل أو قم بتسجيل الدخول\n لمعرفة أفضل سيارة لك",
          GETSTARTED: "ابدأ",
          SKIP: "يتخطى",
        },
      };
}
