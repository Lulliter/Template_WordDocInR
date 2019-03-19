#======  Restart R Session
.rs.restartR()

#======  Clean up the environment
rm(list = ls())

#==============   #==============   #==============   #==============   #==============#    
#======  DIRECTORIES PATHS !!!! 
root_DIR <- fs::path_abs(".")
assets_DIR <- fs::path_abs("./assets") # AKA raw data & inputs & .bib
scripts_DIR <- fs::path_abs("./scripts") #  Accessory scripts not part of the actual flow
reports_DIR <- fs::path_abs("./reports") # output reports 


#==============   #==============   #==============   #==============   #==============#    
#==============  INITIAL SET UP SCRIPT !!!! 				
# !!! @ the Beginning of each .Rmd Now I launch "./rscripts/00_launch" (packages + salesforcer login)


#==============   #==============   #==============   #==============   #==============#    				
#============== RENDER REPORTS 		
# Produce the file  (Html & pdf)  & send it to "./reports"


# ======== just one 
# rmarkdown::render(
# 	input = paste0(root_DIR, "/01_LitRevFut.Rmd"),
# 	output_file = NULL, #  If using NULL then the output filename will be based on filename for the input file
# 	output_format = "all", # because I specify it in the .Rmd files (Html & pdf) 
# 	output_dir = reports_DIR,
# 	envir = new.env(), # The environment in which the code chunks are to be evaluated during knitting
# 	encoding = "UTF-8"
# )
# 

# ========all togetha {list.files + purrr::walk}
# List of files ending with  
filesRmd <- list.files(path = ".", 
							  pattern=".Rmd$",
							  all.files = FALSE,  # def (= only visible)
							  full.names = TRUE,  # I NEED dir name prepended
							  recursive = FALSE,  # def  (= no inside sub-dir )
							  ignore.case = TRUE, # (= pattern-matching be case-insensitive)
							  include.dirs = FALSE, # def (subdirectory names NOT be included in recursive listings)
							  no.. = FALSE)   # def (both "." and ".." be excluded also from non-recursive listings) 
 

# Execute them them in the environment
purrr::walk(filesRmd, rmarkdown::render,
	output_file = NULL, #  If using NULL then the output filename will be based on filename for the input file
	output_format = "all", # because I specify it in the .Rmd files (Html & pdf) 
	output_dir = reports_DIR,
	envir = new.env(), # The environment in which the code chunks are to be evaluated during knitting
	encoding = "UTF-8"
)

