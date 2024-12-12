# Frequency of война in 1954

rm(list = ls()) # Clear Workspace

text_v <- scan("C:/Users/singi/Desktop/HSL/R Studio/Project/NEW_Texts/combined_text_1954.txt", what = "character", sep = "\n")
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
  main = "Dispersion Plot of 'война' in 1954",
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

# Extract and combine the surrounding context into readable sentences
sentences <- lapply(matches, function(m) {
  if (ncol(m) >= 4) {
    # Get the full match from the first column
    full_match <- m[, 1]
    # Return the full match as a readable sentence
    return(full_match)
  } else {
    return(NULL)  # Return NULL if there are fewer than 4 columns
  }
})

# Remove NULL values from the list (in case some matches are incomplete)
sentences <- sentences[!sapply(sentences, is.null)]

# Flatten the list to get a single character vector of sentences
sentences <- unlist(sentences)

# Print the first few sentences to check
head(sentences)

sentences

#Below does not work on my computer with this document

library(syuzhet)

sentiment_scores <- get_sentiment(sentences, method = "RuSentS")
head(sentiment_scores)

# Load ggplot2 for plotting
library(ggplot2)

# Convert sentiment scores into a data frame for easier plotting
sentiment_df <- data.frame(sentence = sentences, sentiment = sentiment_scores)

# Plot the sentiment distribution
ggplot(sentiment_df, aes(x = sentiment)) +
  geom_histogram(binwidth = 0.1, fill = "skyblue", color = "black") +
  labs(title = "Sentiment Distribution of Extracted Sentences", x = "Sentiment Score", y = "Frequency")

# Classify sentences as positive, negative, or neutral based on sentiment score
sentiment_labels <- ifelse(sentiment_scores > 0, "Positive", 
                           ifelse(sentiment_scores < 0, "Negative", "Neutral"))

# Add the sentiment labels to the dataframe
sentiment_df$sentiment_label <- sentiment_labels

# View the first few rows
head(sentiment_df)



# Load the text package
library(text)

# Use a pre-trained Russian sentiment analysis model (e.g., RuBERT)
model <- textEmbedder$new(model = "ai-zhang/bert-russian-sentiment")

# Example Russian sentences
sentences <- c("Мне очень нравится эта книга.",  # I really like this book.
               "Это худший фильм, который я когда-либо видел.")  # This is the worst movie I've ever seen.

# Get sentiment predictions
sentiments <- model$predict(sentences)
print(sentiments)
