# Social Security
social_security <- matrix(c(
  1380, 205,  # Non-Parent 0,1
  511, 62     # Parent 0,1
), nrow = 2, byrow = TRUE)
rownames(social_security) <- c("Non-Parent", "Parent")
colnames(social_security) <- c("Not Prioritized", "Prioritized")
chisq.test(social_security)

# Healthcare
healthcare <- matrix(c(
  1365, 220,
  509, 64
), nrow = 2, byrow = TRUE)
rownames(healthcare) <- c("Non-Parent", "Parent")
colnames(healthcare) <- c("Not Prioritized", "Prioritized")
chisq.test(healthcare)

# Welfare
welfare <- matrix(c(
  1515, 70,
  546, 27
), nrow = 2, byrow = TRUE)
rownames(welfare) <- c("Non-Parent", "Parent")
colnames(welfare) <- c("Not Prioritized", "Prioritized")
chisq.test(welfare)

# Education
education <- matrix(c(
  1523, 62,
  515, 58
), nrow = 2, byrow = TRUE)
rownames(education) <- c("Non-Parent", "Parent")
colnames(education) <- c("Not Prioritized", "Prioritized")
chisq.test(education)

# Crime
crime <- matrix(c(
  1366, 219,
  516, 57
), nrow = 2, byrow = TRUE)
rownames(crime) <- c("Non-Parent", "Parent")
colnames(crime) <- c("Not Prioritized", "Prioritized")
chisq.test(crime)

# Migration
migration <- matrix(c(
  1205, 380,
  481, 92
), nrow = 2, byrow = TRUE)
rownames(migration) <- c("Non-Parent", "Parent")
colnames(migration) <- c("Not Prioritized", "Prioritized")
chisq.test(migration)

# Environment
environment <- matrix(c(
  1507, 78,
  547, 26
), nrow = 2, byrow = TRUE)
rownames(environment) <- c("Non-Parent", "Parent")
colnames(environment) <- c("Not Prioritized", "Prioritized")
chisq.test(environment)

# Climate
climate <- matrix(c(
  1416, 169,
  515, 58
), nrow = 2, byrow = TRUE)
rownames(climate) <- c("Non-Parent", "Parent")
colnames(climate) <- c("Not Prioritized", "Prioritized")
chisq.test(climate)

# Employment
employment <- matrix(c(
  1550, 35,
  553, 20
), nrow = 2, byrow = TRUE)
rownames(employment) <- c("Non-Parent", "Parent")
colnames(employment) <- c("Not Prioritized", "Prioritized")
chisq.test(employment)

# Economy
economy <- matrix(c(
  1332, 253,
  422, 151
), nrow = 2, byrow = TRUE)
rownames(economy) <- c("Non-Parent", "Parent")
colnames(economy) <- c("Not Prioritized", "Prioritized")
chisq.test(economy)
