# Social Security
social_security_fm <- matrix(c(
  239, 14,   # Fathers 0,1
  272, 48    # Mothers 0,1
), nrow = 2, byrow = TRUE)
rownames(social_security_fm) <- c("Fathers", "Mothers")
colnames(social_security_fm) <- c("Not Prioritized", "Prioritized")
chisq.test(social_security_fm)

# Healthcare
healthcare_fm <- matrix(c(
  242, 11,
  267, 53
), nrow = 2, byrow = TRUE)
rownames(healthcare_fm) <- c("Fathers", "Mothers")
colnames(healthcare_fm) <- c("Not Prioritized", "Prioritized")
chisq.test(healthcare_fm)

# Welfare
welfare_fm <- matrix(c(
  243, 10,
  303, 17
), nrow = 2, byrow = TRUE)
rownames(welfare_fm) <- c("Fathers", "Mothers")
colnames(welfare_fm) <- c("Not Prioritized", "Prioritized")
chisq.test(welfare_fm)

# Education
education_fm <- matrix(c(
  239, 14,
  276, 44
), nrow = 2, byrow = TRUE)
rownames(education_fm) <- c("Fathers", "Mothers")
colnames(education_fm) <- c("Not Prioritized", "Prioritized")
chisq.test(education_fm)

# Crime
crime_fm <- matrix(c(
  221, 32,
  295, 25
), nrow = 2, byrow = TRUE)
rownames(crime_fm) <- c("Fathers", "Mothers")
colnames(crime_fm) <- c("Not Prioritized", "Prioritized")
chisq.test(crime_fm)

# Migration
migration_fm <- matrix(c(
  209, 44,
  272, 48
), nrow = 2, byrow = TRUE)
rownames(migration_fm) <- c("Fathers", "Mothers")
colnames(migration_fm) <- c("Not Prioritized", "Prioritized")
chisq.test(migration_fm)

# Environment
environment_fm <- matrix(c(
  237, 16,
  310, 10
), nrow = 2, byrow = TRUE)
rownames(environment_fm) <- c("Fathers", "Mothers")
colnames(environment_fm) <- c("Not Prioritized", "Prioritized")
chisq.test(environment_fm)

# Climate
climate_fm <- matrix(c(
  230, 23,
  285, 35
), nrow = 2, byrow = TRUE)
rownames(climate_fm) <- c("Fathers", "Mothers")
colnames(climate_fm) <- c("Not Prioritized", "Prioritized")
chisq.test(climate_fm)

# Employment
employment_fm <- matrix(c(
  248, 5,
  304, 15
), nrow = 2, byrow = TRUE)
rownames(employment_fm) <- c("Fathers", "Mothers")
colnames(employment_fm) <- c("Not Prioritized", "Prioritized")
chisq.test(employment_fm)

# Economy
economy_fm <- matrix(c(
  188, 65,
  234, 86
), nrow = 2, byrow = TRUE)
rownames(economy_fm) <- c("Fathers", "Mothers")
colnames(economy_fm) <- c("Not Prioritized", "Prioritized")
chisq.test(economy_fm)
