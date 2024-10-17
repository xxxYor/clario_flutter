// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'sign_up_cubit.dart';

class SignUpState {
  final bool lengthIsValid;
  final bool casesIsValid;
  final bool digitsIsValid;
  final bool isInvalid;
  final bool isLoading;
  final bool loggingSuccess;

  SignUpState({
    this.lengthIsValid = false,
    this.casesIsValid = false,
    this.digitsIsValid = false,
    this.isInvalid = false,
    this.isLoading = false,
    this.loggingSuccess = false,
  });

  SignUpState copyWith({
    bool? lengthIsValid,
    bool? casesIsValid,
    bool? digitsIsValid,
    bool? isInvalid,
    bool? isLoading,
    bool? loggingSuccess,
  }) {
    return SignUpState(
      lengthIsValid: lengthIsValid ?? this.lengthIsValid,
      casesIsValid: casesIsValid ?? this.casesIsValid,
      digitsIsValid: digitsIsValid ?? this.digitsIsValid,
      isInvalid: isInvalid ?? this.isInvalid,
      isLoading: isLoading ?? this.isLoading,
      loggingSuccess: loggingSuccess ?? this.loggingSuccess,
    );
  }

  @override
  bool operator ==(covariant SignUpState other) {
    if (identical(this, other)) return true;
  
    return 
      other.lengthIsValid == lengthIsValid &&
      other.casesIsValid == casesIsValid &&
      other.digitsIsValid == digitsIsValid &&
      other.isInvalid == isInvalid &&
      other.isLoading == isLoading &&
      other.loggingSuccess == loggingSuccess;
  }

  @override
  int get hashCode {
    return lengthIsValid.hashCode ^
      casesIsValid.hashCode ^
      digitsIsValid.hashCode ^
      isInvalid.hashCode ^
      isLoading.hashCode ^
      loggingSuccess.hashCode;
  }
}
