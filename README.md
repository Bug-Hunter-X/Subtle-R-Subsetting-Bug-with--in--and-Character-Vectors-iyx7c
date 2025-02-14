# R Subsetting Bug with %in% and Character Vectors

This repository demonstrates a common, yet subtle, bug in R related to subsetting data frames using the `%in%` operator with character vectors.  The problem arises when comparing character vectors that might contain extra whitespace characters (spaces, tabs, etc.). The `%in%` operator performs an exact match, and therefore fails to find matches when there are variations in whitespace.

The `bug.r` file contains code illustrating the issue. The `bugSolution.r` file presents a solution using `trimws()` to handle such cases.