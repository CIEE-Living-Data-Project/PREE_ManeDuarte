            ### PREE_Project - Setting data in github ###

# Author: Mary Paz Mane Duarte
# Date: 2022-09-15


# Needed libraries #
library(groundhog)
groundhog.library("usethis", "2022-09-15")
grounfhog.library("gitcreds", "2022-09-15")

# Create directories for data and scripts in current working directory #
dir.create("scripts/")
dir.create("outputs/")
dir.create("manuscript/")
dir.create("style/")
dir.create("study_plan/")


# Setting Github credentials on RStudio

# Create a Personal Access Token (PAT)
usethis::create_github_token()

# Use this to set your credentials for that specific project. When asked for your PAT,
#     just paste it and hit ENTER
gitcreds::gitcreds_set(url = "https://github.com/yourproject.git")

# Check that you do have it set
check_for_git()
