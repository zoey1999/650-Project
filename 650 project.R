#load packages
#install.packages('ggplot2','dplyr','tidyverse','readxl','patchwork','lme4','effects',"devtools","emmeans","gridExtra") #install packages

library.list<- c('ggplot2','readxl','dplyr','tidyverse','patchwork','lme4','effects','sjPlot',"emmeans","gridExtra") #load packages
sapply(library.list, library, character.only=T, quietly=T)
library(NHANES)
#----
dat<-NHANES
head(dat)
model_1<-lm(BPSysAve~BMI,data=dat)
summary(model_1)
plot_model(model_1,type="pred",show.data = TRUE)

#I added the other covariates in groups
#Demographic
model_2<-lm(BPSysAve~BMI+Gender+Race1+Education,data=dat)
summary(model_2)
#health variables
model_3<-lm(BPSysAve~BMI+Gender+Race1+Education+TotChol+Diabetes+PhysActive+SmokeNow,data=dat)
summary(model_3)
