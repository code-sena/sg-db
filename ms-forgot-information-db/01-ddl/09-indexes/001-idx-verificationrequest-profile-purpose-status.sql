CREATE INDEX idx_verificationrequest_profile_purpose_status
ON ForgotInformation.VerificationRequest (ProfileId, Purpose, Status);
