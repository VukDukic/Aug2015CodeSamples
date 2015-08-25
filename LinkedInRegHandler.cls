global class LinkedInRegHandler implements Auth.RegistrationHandler{
//This method is called when the user log-in using social single sign-on credentials.
//This method will return the user details, either you can create new user
//or return the existing user if the match is found
global User createUser(Id portalId, Auth.UserData data){
if(data.email.contains('@gmail.com')){
User u = [Select id,email,isActive from user where email =: data.email and isActive = true Limit 1];
return u;
}
return null;
}
//This method is called, if the user logged in before with the authorization provider and then logs in again.
global void updateUser(Id userId, Id portalId, Auth.UserData data){
User u = new User(id=userId);
u.email = data.email;
u.lastName = data.lastName;
u.firstName = data.firstName;
update(u);
}
}
