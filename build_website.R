# Step 0: Set password ----------------------------------------------------

##########################################################################
##### DON'T PUSH THIS SECTION TO GITHUB  - REMOVE THIS AFTER RUNNING #####
##########################################################################
# Sys.setenv(LAB_KEY = "Your-token")

# Step 1: Build Website ---------------------------------------------------
rmarkdown::render_site(encoding = 'UTF-8')

# Step 2: Encode Journal.html ---------------------------------------------
# Encrypt

##########################################################################
###### THIS WILL ONLY WORK IF YOU HAVE STATICRYPT INSTALLED VIA NPM ######
##########################################################################

#system( paste0("staticrypt ./docs/journal.html ", Sys.getenv("LAB_KEY")) )
system( paste0("staticrypt ./docs/challenge_1.html ", LAB_KEY) )
system( paste0("staticrypt ./docs/challenge_2.html ", LAB_KEY) )
system( paste0("staticrypt ./docs/challenge_3.html ", LAB_KEY) )

# Remove and rename resulting files
file.remove("./docs/challenge_1.html")
file.remove("./docs/challenge_2.html")
file.remove("./docs/challenge_3.html")
file.rename(from = "./docs/challenge_1_encrypted.html", 
            to   = "./docs/challenge_1.html")
file.rename(from = "./docs/challenge_2_encrypted.html", 
            to   = "./docs/challenge_2.html")
file.rename(from = "./docs/challenge_3_encrypted.html", 
            to   = "./docs/challenge_3.html")

# Open local html file in your browser
browseURL("./docs/index.html")
