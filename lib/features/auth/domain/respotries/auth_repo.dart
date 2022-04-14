abstract class AuthRepo
{
  Future loginWithGoogle();
  Future loginWithFacebook();
  Future completeInformation({ required String name, required String mobileNumber, required String address});
}