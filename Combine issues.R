rm(list = ls()) # Clear Workspace

# List the files you want to combine
file_paths <- list.files(path = "Project/NEW_Texts/1950s/1954/TXT", pattern = "*.txt", full.names = TRUE)

# Read the content of all files into a list
all_texts <- lapply(file_paths, function(file) {
  readLines(file, warn = FALSE)  # Read each file line by line
})

# Combine the text from all files into a single vector
combined_text <- unlist(all_texts)

# Write the combined text to a new file
writeLines(combined_text, "combined_text_1954.txt")

rm(list = ls()) # Clear Workspace

# List the files you want to combine
file_paths <- list.files(path = "Project/NEW_Texts/1950s/1956/TXT", pattern = "*.txt", full.names = TRUE)

# Read the content of all files into a list
all_texts <- lapply(file_paths, function(file) {
  readLines(file, warn = FALSE)  # Read each file line by line
})

# Combine the text from all files into a single vector
combined_text <- unlist(all_texts)

# Write the combined text to a new file
writeLines(combined_text, "combined_text_1956.txt")

rm(list = ls()) # Clear Workspace

# List the files you want to combine
file_paths <- list.files(path = "Project/NEW_Texts/1950s/1958/TXT", pattern = "*.txt", full.names = TRUE)

# Read the content of all files into a list
all_texts <- lapply(file_paths, function(file) {
  readLines(file, warn = FALSE)  # Read each file line by line
})

# Combine the text from all files into a single vector
combined_text <- unlist(all_texts)

# Write the combined text to a new file
writeLines(combined_text, "combined_text_1958.txt")

rm(list = ls()) # Clear Workspace

# List the files you want to combine
file_paths <- list.files(path = "Project/NEW_Texts/1960s/1963/TXT", pattern = "*.txt", full.names = TRUE)

# Read the content of all files into a list
all_texts <- lapply(file_paths, function(file) {
  readLines(file, warn = FALSE)  # Read each file line by line
})

# Combine the text from all files into a single vector
combined_text <- unlist(all_texts)

# Write the combined text to a new file
writeLines(combined_text, "combined_text_1963.txt")

rm(list = ls()) # Clear Workspace

# List the files you want to combine
file_paths <- list.files(path = "Project/NEW_Texts/1960s/1966/TXT", pattern = "*.txt", full.names = TRUE)

# Read the content of all files into a list
all_texts <- lapply(file_paths, function(file) {
  readLines(file, warn = FALSE)  # Read each file line by line
})

# Combine the text from all files into a single vector
combined_text <- unlist(all_texts)

# Write the combined text to a new file
writeLines(combined_text, "combined_text_1966.txt")

rm(list = ls()) # Clear Workspace

# List the files you want to combine
file_paths <- list.files(path = "Project/NEW_Texts/1960s/1969/TXT", pattern = "*.txt", full.names = TRUE)

# Read the content of all files into a list
all_texts <- lapply(file_paths, function(file) {
  readLines(file, warn = FALSE)  # Read each file line by line
})

# Combine the text from all files into a single vector
combined_text <- unlist(all_texts)

# Write the combined text to a new file
writeLines(combined_text, "combined_text_1969.txt")


rm(list = ls()) # Clear Workspace

# List the files you want to combine
file_paths <- list.files(path = "Project/NEW_Texts/1980s/1983/TXT", pattern = "*.txt", full.names = TRUE)

# Read the content of all files into a list
all_texts <- lapply(file_paths, function(file) {
  readLines(file, warn = FALSE)  # Read each file line by line
})

# Combine the text from all files into a single vector
combined_text <- unlist(all_texts)

# Write the combined text to a new file
writeLines(combined_text, "combined_text_1983.txt")

rm(list = ls()) # Clear Workspace

# List the files you want to combine
file_paths <- list.files(path = "Project/NEW_Texts/1980s/1986/TXT", pattern = "*.txt", full.names = TRUE)

# Read the content of all files into a list
all_texts <- lapply(file_paths, function(file) {
  readLines(file, warn = FALSE)  # Read each file line by line
})

# Combine the text from all files into a single vector
combined_text <- unlist(all_texts)

# Write the combined text to a new file
writeLines(combined_text, "combined_text_1986.txt")

rm(list = ls()) # Clear Workspace

# List the files you want to combine
file_paths <- list.files(path = "Project/NEW_Texts/1980s/1989/TXT", pattern = "*.txt", full.names = TRUE)

# Read the content of all files into a list
all_texts <- lapply(file_paths, function(file) {
  readLines(file, warn = FALSE)  # Read each file line by line
})

# Combine the text from all files into a single vector
combined_text <- unlist(all_texts)

# Write the combined text to a new file
writeLines(combined_text, "combined_text_1989.txt")