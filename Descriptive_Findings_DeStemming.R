library(dplyr)
library(readr)
library(ggplot2)
library(tidyr)

# 1. Load data
df <- read_csv("DS2023.csv")

# 2. Create necessary variables

# Gender (Female=1, Male=0)
df <- df %>%
  mutate(Female_Effect = ifelse(Gender == "Female", 1, 0))

# Parenthood (Parent=1, Non-parent=0)
df <- df %>%
  mutate(Parent_Effect = ifelse(Parenthood_Status == "Parent" & Children_in_Household > 0, 1, 0))

# Mother vs Father (Mother=1, Father=0), only for parents
df <- df %>%
  mutate(Mother_Effect = ifelse(Parenthood_Status == "Parent" & Gender == "Female", 1,
                                ifelse(Parenthood_Status == "Parent" & Gender == "Male", 0, NA)))

# Create Respondent_ID if it does not exist
if(!"Respondent_ID" %in% colnames(df)) {
  df <- df %>% mutate(Respondent_ID = row_number())
}

# 3. Convert priority issues to long format
df_long <- df %>%
  select(Respondent_ID, Female_Effect, Parent_Effect, Mother_Effect, IP_Closed_1, IP_Closed_2) %>%
  pivot_longer(cols = c(IP_Closed_1, IP_Closed_2),
               names_to = "Priority_Order", values_to = "Issue_Code") %>%
  filter(!is.na(Issue_Code))

# 4. Create descriptive tables with requested names

# Table 1: Gender (Female vs Male)
Table_Gender <- df_long %>%
  group_by(Female_Effect, Issue_Code) %>%
  summarise(Count = n(), .groups = "drop") %>%
  mutate(Gender = ifelse(Female_Effect == 1, "Female", "Male")) %>%
  select(Gender, Issue_Code, Count)

# Table 2: Parenthood status (Parent vs Non-parent)
Table_Parenthood <- df_long %>%
  group_by(Parent_Effect, Issue_Code) %>%
  summarise(Count = n(), .groups = "drop") %>%
  mutate(Parenthood_Status = ifelse(Parent_Effect == 1, "Parent", "Non-parent")) %>%
  select(Parenthood_Status, Issue_Code, Count)

# Table 3: Gendered Parenthood (Mothers vs Fathers)
Table_Gendered_Parenthood <- df_long %>%
  filter(!is.na(Mother_Effect)) %>%
  group_by(Mother_Effect, Issue_Code) %>%
  summarise(Count = n(), .groups = "drop") %>%
  mutate(Parent_Gender = ifelse(Mother_Effect == 1, "Mother", "Father")) %>%
  select(Parent_Gender, Issue_Code, Count)

# 5. Save tables to RData
save(Table_Gender, Table_Parenthood, Table_Gendered_Parenthood, file = "descriptive_tables.RData")

# 6. Plot example bar charts for each table

# Gender
ggplot(Table_Gender, aes(x = factor(Issue_Code), y = Count, fill = Gender)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Issue Prioritization by Gender (Female vs Male)",
       x = "Issue Code",
       y = "Number of Respondents") +
  theme_minimal()

# Parenthood
ggplot(Table_Parenthood, aes(x = factor(Issue_Code), y = Count, fill = Parenthood_Status)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Issue Prioritization by Parenthood Status (Parent vs Non-parent)",
       x = "Issue Code",
       y = "Number of Respondents") +
  theme_minimal()

# Gendered Parenthood
ggplot(Table_Gendered_Parenthood, aes(x = factor(Issue_Code), y = Count, fill = Parent_Gender)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Issue Prioritization by Gendered Parenthood (Mothers vs Fathers)",
       x = "Issue Code",
       y = "Number of Respondents") +
  theme_minimal()
