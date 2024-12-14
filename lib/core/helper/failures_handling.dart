// import 'package:dio/dio.dart';
// import 'package:your_reservation/core/localization/language_service.dart';

// class Failures {
//   final String errMessage;
//   final dynamic data;
//   Failures({
//     required this.errMessage,
//     this.data,
//   });
// }

// /// Represents a failure related to server communication, extending the base [Failures] class.
// class FailuresServer extends Failures {
//   /// Constructs a [FailuresServer] instance with an error message.
//   FailuresServer({
//     required super.errMessage,
//     super.data,
//   });

//   /// Factory method to create a [FailuresServer] instance from a [DioException].
//   factory FailuresServer.fromDioException({
//     required DioExceptionType exType,
//   }) {
//     switch (exType) {
//       case DioExceptionType.connectionTimeout:
//         return FailuresServer(
//           errMessage: languageService.currentLanguageCode() == 'en'
//               ? 'Connection timed out'
//               : 'انتهت مهلة الاتصال',
//         );
//       case DioExceptionType.sendTimeout:
//         return FailuresServer(
//           errMessage: languageService.currentLanguageCode()  == 'en'
//               ? 'Transmission timed out'
//               : 'انتهت مهلة الإرسال',
//         );
//       case DioExceptionType.receiveTimeout:
//         return FailuresServer(
//           errMessage: languageService.currentLanguageCode()  == 'en'
//               ? 'Receipt timeout has expired'
//               : 'انتهت مهلة الاستلام',
//         );
//       case DioExceptionType.badCertificate:
//         return FailuresServer(
//           errMessage: languageService.currentLanguageCode()  == 'en'
//               ? 'Bad testimony'
//               : 'شهادة سيئة',
//         );
//       case DioExceptionType.badResponse:
//         return FailuresServer(
//           errMessage: languageService.currentLanguageCode()  == 'en'
//               ? 'unavailable!'
//               : 'غير موجود!',
//         );
//       case DioExceptionType.cancel:
//         return FailuresServer(
//           errMessage: languageService.currentLanguageCode()  == 'en'
//               ? 'canceled'
//               : 'تم الإلغاء',
//         );
//       case DioExceptionType.connectionError:
//         return FailuresServer(
//           errMessage: languageService.currentLanguageCode()  == 'en'
//               ? 'connection error'
//               : 'خطأ في الاتصال',
//         );
//       case DioExceptionType.unknown:
//         return FailuresServer(
//           errMessage: languageService.currentLanguageCode()  == 'en'
//               ? 'unknown'
//               : 'غير معروف',
//         );
//     }
//   }
// }
