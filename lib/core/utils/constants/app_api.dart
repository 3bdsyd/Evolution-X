//* This class contains constant strings representing various API endpoints
//* for the application. Each endpoint is derived from the base URL of the API.

class AppApi {
  // Base URL for the API
  static const String _baseUrl = 'https://7ajzacom.com/api/';

  //* Authentication endpoints
  /// Endpoint for user login
  static const String login = '${_baseUrl}login';

  static const String updateProfile = '${_baseUrl}patient/profile';
  static const String updatePassword = '${_baseUrl}patient/reset-password';
  static const String forgotPassword = '${_baseUrl}forgot-password';
  static const String resetPassword = '${_baseUrl}reset-password';
  static const String patientVerify = '${_baseUrl}patient/verify';

  /// Endpoint for user registration
  static const String register = '${_baseUrl}patient/register';

  /// Endpoint for user logout
  static const String logout = '${_baseUrl}logout';

  static const String deleteAccount = '${_baseUrl}patient/delete_account';

  //* Specialty endpoints
  /// Endpoint to get all specialties
  static const String allSpecialties = '${_baseUrl}patient/specialties/';

  /// Endpoint to get specialties for the homepage
  static const String specialtiesForHome =
      '${_baseUrl}patient/specialties/homepage/';

  /// Endpoint to get specialties for the homepage
  static const String doctorsSearch = '${_baseUrl}patient/doctor/search';

  //* Clinic endpoint
  /// Endpoint to get clinic ID
  static const String clinicId = '${_baseUrl}clinicId';

  //* Banner endpoint
  /// Endpoint to get patient banners
  static const String banner = '${_baseUrl}patient/banner/';

  //* Doctor endpoints
  /// Endpoint to get doctors of a Specialty
  static const String doctorSpecialty = '${_baseUrl}patient/doctor/';

  static const String doctorProfile = '${_baseUrl}patient/doctor_details/';

  /// Endpoint to get best doctors
  static const String bestDoctors = '${_baseUrl}patient/best/doctor/';

  static const String doctorDetailsOfSpecialty = '${_baseUrl}patient/doctor/';

  static const String appointmentsAvailable =
      '${_baseUrl}patient/appointments/doctor/';

  static const String reservation = '${_baseUrl}patient/appointments/book';

  static const String appointmentsPast = '${_baseUrl}patient/appointments/past';
  static const String appointmentsFuture =
      '${_baseUrl}patient/appointments/future';
  static const String rating = '${_baseUrl}patient/evaluations/';

  static const String evaluate = '${_baseUrl}patient/evaluate/';
  static const String favorites = '${_baseUrl}patient/favorites/get/all';
  static const String contactUs = '${_baseUrl}patient/clinic/';
  static const String deleteFavorites = '${_baseUrl}patient/favorites/delete/';
  static const String addFavorites = '${_baseUrl}patient/favorites/';
}
