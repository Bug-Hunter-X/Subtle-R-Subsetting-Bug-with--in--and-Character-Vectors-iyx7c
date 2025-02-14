```r
# This code attempts to subset a data frame using a character vector, but it fails because of a subtle issue with how R handles character vectors when subsetting.

df <- data.frame(col1 = c(1,2,3), col2 = c("A", "B", "C"))

# Incorrect subsetting
indices <- c("A", "B")
subset_df <- df[df$col2 %in% indices, ]

# The above will NOT return rows where col2 is 'A' or 'B', because %in% only works with the exact same character string and any extra whitespace would prevent a match. 
# Thus, it often returns an empty data frame.
```