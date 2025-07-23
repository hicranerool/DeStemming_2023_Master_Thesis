# Create a data frame for each issue with counts for Female and Male prioritization (0 = not prioritized, 1 = prioritized)

# Repeat similarly for each issues prioritization.

# Social Security
social_security <- matrix(c(
  862, 184,  # Male 0,1
  1029, 83   # Female 0,1
), nrow = 2, byrow = TRUE)
rownames(social_security) <- c("Male", "Female")
colnames(social_security) <- c("Not Prioritized", "Prioritized")

# Chi-square test
chisq.test(social_security)

# Healthcare
healthcare <- matrix(c(
  884, 162,
  990, 122
), nrow = 2, byrow = TRUE)
rownames(healthcare) <- c("Male", "Female")
colnames(healthcare) <- c("Not Prioritized", "Prioritized")
chisq.test(healthcare)

# Welfare
welfare <- matrix(c(
  1015, 37,
  1052, 60
), nrow = 2, byrow = TRUE)
rownames(welfare) <- c("Male", "Female")
colnames(welfare) <- c("Not Prioritized", "Prioritized")
chisq.test(welfare)

# Education
education <- matrix(c(
  971, 75,
  1067, 45
), nrow = 2, byrow = TRUE)
rownames(education) <- c("Male", "Female")
colnames(education) <- c("Not Prioritized", "Prioritized")
chisq.test(education)

# Crime
crime <- matrix(c(
  825, 221,
  1057, 55
), nrow = 2, byrow = TRUE)
rownames(crime) <- c("Male", "Female")
colnames(crime) <- c("Not Prioritized", "Prioritized")
chisq.test(crime)

# Migration
migration <- matrix(c(
  645, 401,
  401, 711
), nrow = 2, byrow = TRUE) 
rownames(migration) <- c("Male", "Female")
colnames(migration) <- c("Not Prioritized", "Prioritized")
chisq.test(migration)

# Environment
environment <- matrix(c(
  962, 84,
  1092, 20
), nrow = 2, byrow = TRUE)
rownames(environment) <- c("Male", "Female")
colnames(environment) <- c("Not Prioritized", "Prioritized")
chisq.test(environment)

# Climate
climate <- matrix(c(
  890, 156,
  1041, 71
), nrow = 2, byrow = TRUE)
rownames(climate) <- c("Male", "Female")
colnames(climate) <- c("Not Prioritized", "Prioritized")
chisq.test(climate)

# Employment
employment <- matrix(c(
  1013, 33,
  1090, 22
), nrow = 2, byrow = TRUE)
rownames(employment) <- c("Male", "Female")
colnames(employment) <- c("Not Prioritized", "Prioritized")
chisq.test(employment)

# Economy
economy <- matrix(c(
  752, 294,
  1002, 110
), nrow = 2, byrow = TRUE)
rownames(economy) <- c("Male", "Female")
colnames(economy) <- c("Not Prioritized", "Prioritized")
chisq.test(economy)

