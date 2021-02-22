heute <- gsub("-", "", Sys.Date()) 
des_file <- paste0("cov_vac_", heute, ".xlsx")

curl::curl_download(
	"https://www.rki.de/DE/Content/InfAZ/N/Neuartiges_Coronavirus/Daten/Impfquotenmonitoring.xlsx?__blob=publicationFile", 
	destfile = des_file
)
