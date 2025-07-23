# -------------------------------------------------------------
# Logistic Regression on Education as a Priority
# -------------------------------------------------------------

# 1. Load libraries
library(dplyr)
library(readr)
library(ggplot2)
library(broom)

# 2. Load data
# Replace 'DS2023.csv' with your actual CSV file path
df <- read_csv("DS2023.csv")

# 3. Create binary dependent variable for Education priority
# Education = 13 in De Stemming survey question

df <- df %>%
  mutate(Education_Priority = ifelse(IP_Closed_1 == 13 | IP_Closed_2 == 13, 1, 0))

# 4. Recode control variables (same logic as previous models)
df <- df %>%
  mutate(
    Female_Effect = ifelse(Gender == "Female", 1, 0),
    Parent_Effect = ifelse(Parenthood_Status == "Parent" & Children_in_Household > 0, 1, 0),
    Parent_Female_Effect = Female_Effect * Parent_Effect,
    Age = as.numeric(Age),
    Migrant_Status = ifelse(Migration_Background == "Yes", 1, 0),
    Income = as.numeric(Income_Level),
    Education_Level = as.factor(Education_Level)
  )

# 5. Logistic regression model
model_education <- glm(Education_Priority ~ Female_Effect + Parent_Effect + 
                         Parent_Female_Effect + Age + Income + Migrant_Status + 
                         Education_Level,
                       data = df,
                       family = binomial(link = "logit"))

# 6. Output the summary
summary(model_education)

# 7. Tidy the results
tidy(model_education, exponentiate = TRUE, conf.int = TRUE)
