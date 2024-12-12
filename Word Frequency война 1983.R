# Frequency of война in 1983

rm(list = ls()) # Clear Workspace

text_v <- scan("C:/Users/singi/Desktop/HSL/R Studio/Project/NEW_Texts/combined_text_1983.txt", what = "character", sep = "\n")
length(text_v)
novel_v <- paste(text_v, collapse = " ")
length(novel_v)

novel_lower_v <- tolower(novel_v)
journal_word_1 <- strsplit(novel_lower_v, "\\W")

str(journal_word_1)
journal_word_v <- unlist(journal_word_1)
not_blanks_v <- which(journal_word_v != " ")
not_blanks_v[1:10]
journal_word_v <- journal_word_v[not_blanks_v]
journal_word_v
not_blanks_v <- which(journal_word_v != "")
not_blanks_v[1:10]
journal_word_v <- journal_word_v[not_blanks_v]


length(journal_word_v)
length(unique(journal_word_v))
sorted_journal_t <- table(journal_word_v)
sorted_journal_t <- sort(sorted_journal_t, decreasing = TRUE)
head(sorted_journal_t)
top_hundred <- sorted_journal_t[1:100]
top_twenty <- sorted_journal_t[1:20]
top_twenty
top_hundred


i_time_v <- seq(from = 1, to = length(journal_word_v))
война_v <- which(journal_word_v == "война")
война_v
в_count_v <- rep(NA, times = length(i_time_v))
в_count_v[война_v] <- 1
plot(
  в_count_v,
  main = "Dispersion Plot of 'война' in 1983",
  xlab = "Issue Time",
  ylab = "война",
  type = "h",
  ylim = c(0, 1), yaxt = 'n'
)


library(stringr)

word_to_search <- "война"
context_pattern <- paste0("([\\w]+(?:[\\s]+[\\w]+){0,2})?\\s*(война)\\s*([\\w]+(?:[\\s]+[\\w]+){0,2})?")
matches <- str_match_all(novel_lower_v, context_pattern)
str(matches)