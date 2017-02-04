setwd("C:/Users/Peter Caya/Dropbox/Kaggle/Credit Card FRaud/")
library(pacman)
p_load(data.table,dplyr,ggplot2, reshape,dtplyr)
CC <- fread(input = "creditcard.csv")




# Perform Exploratory Data Analysis ---------------------------------------




# Count NA values:
NA_Counta <-apply(X = CC,MARGIN = 2,FUN = function(X){sum(is.na(X))})


# Determine the distribution of each of the different factors
Melted_Data <- melt(CC)
Melted_Frauds <- melt(CC[which(CC$Class==1),])
Melted_Legit <-  melt(CC[which(!CC$Class==1),])

Melted_Data$Type <- "All Data"
Melted_Frauds$Type <- "Frauds"
Melted_Legit$Type <- "Normal"

Plot_Data <-rbind(Melted_Data,Melted_Legit,Melted_Frauds)


ggplot(data = Plot_Data %>% filter(grepl(x=variable,"V")) )+geom_boxplot(aes(x=variable,y=value ))+facet_grid(Type~.)+ggtitle("Features of Credit Card Data")+xlab("Features")


# Generate summary statistics for the different features:

hold <- CC %>% group_by(Class) %>% summarise_at(.cols = vars(starts_with("V")), .funs = c(Mean="mean", Sd="sd"))  



