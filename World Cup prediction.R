complete_data <- read.csv("CompleteDataset.csv",stringsAsFactors = F)
str(complete_data)


#we wont be needing few columns like link to photos,etc
complete_data <- complete_data[-1]
sum(is.na(complete_data))


complete_data <- complete_data[ , -which(names(complete_data) %in% c("X","Photo","Flag","Club.Logo"))]

#converting data as factors
complete_data$Name <- as.factor(complete_data$Name)
complete_data$Nationality <- as.factor(complete_data$Nationality)
complete_data$Club <- as.factor(complete_data$Club)

#check data for related countries only, delete data related to unrelated countries,not playing in world cp
levels(complete_data$Nationality)
#creating a list of competing Nations
countries <- c("Russia","Uruguay","Spain","Portugal","France","Denmark","Croatia","Argentina","Brazil","Switzerland","Mexico","Sweden","England","Belgium","Japan","Colombia")
f2018_data <- subset(complete_data,complete_data$Nationality %in% countries)

sum(duplicated(f2018_data))
f2018_data <-  unique(f2018_data)


#country wise Data
for (i in countries)
{
  assign(paste("",i,sep=""),subset(f2018_data,Nationality == i))  
  print(head(i))
}

#removing players who are not in the tournment using excel and teams who already got eliminated
write.csv(Argentina,"Argentina.csv")
write.csv(Belgium,"Belgium.csv")
write.csv(Brazil,"Brazil.csv")
write.csv(Colombia,"Colombia.csv")
write.csv(Croatia,"Croatia.csv")
write.csv(Denmark,"Denmark.csv")
write.csv(England,"England.csv")
write.csv(France,"France.csv")
write.csv(Japan,"Japan.csv")
write.csv(Mexico,"Mexico.csv")
write.csv(Portugal,"Portugal.csv")
write.csv(Mexico,"Mexico.csv")
write.csv(Russia,"Russia.csv")
write.csv(Spain,"Spain.csv")
write.csv(Sweden,"Sweden.csv")
write.csv(Switzerland,"switzerland.csv")
write.csv(Uruguay,"Uruguay.csv")

#Excel used for selecting only players in squad
#readin csv files which have only playing 
Argentina <- read.csv("Argentina.csv",stringsAsFactors = F)
Belgium <- read.csv("Belgium.csv",stringsAsFactors = F)
Brazil <- read.csv("Brazil.csv",stringsAsFactors = F)
Colombia <- read.csv("Colombia.csv",stringsAsFactors = F)
Croatia <- read.csv("Croatia.csv",stringsAsFactors = F)
Denmark <- read.csv("Denmark.csv",stringsAsFactors = F)
England <- read.csv("England.csv",stringsAsFactors = F)
France <- read.csv("France.csv",stringsAsFactors = F)
Japan <- read.csv("Japan.csv",stringsAsFactors = F)
Mexico <- read.csv("Mexico.csv",stringsAsFactors = F)
Portugal <- read.csv("Portugal.csv",stringsAsFactors = F)
Russia <- read.csv("Russia.csv",stringsAsFactors = F)
Spain <- read.csv("Spain.csv",stringsAsFactors = F)
Sweden <- read.csv("Sweden.csv",stringsAsFactors = F)
Switzerland <- read.csv("Switzerland.csv",stringsAsFactors = F)
Uruguay <- read.csv("Uruguay.csv",stringsAsFactors = F)


#subset each team to gk defence mid and forwards
#run fuctions file first then the countries gile

#aggregate for each tea attack,Mid and defence also goalie
Argentina_att <- mean(Argentina$Attack_score,na.rm = T)
Argentina_mid <- mean(Argentina$mid_score,na.rm = T)
Argentina_def <- mean(Argentina$def_score,na.rm = T)
Argentina_gk <- agg_gk(Argentina,7)

Belgium_att <- mean(Belgium$Attack_score,na.rm = T)
Belgium_mid <- mean(Belgium$mid_score,na.rm = T)
Belgium_def <- mean(Belgium$def_score,na.rm = T)
Belgium_gk <- agg_gk(Belgium,3)

Brazil_att <- mean(Brazil$Attack_score,na.rm = T)
Brazil_mid <- mean(Brazil$mid_score,na.rm = T)
Brazil_def <- mean(Brazil$def_score,na.rm = T)
Brazil_gk <- agg_gk(Brazil,1)

Colombia_att <- mean(Colombia$Attack_score,na.rm = T)
Colombia_mid <- mean(Colombia$mid_score,na.rm = T)
Colombia_def <- mean(Colombia$def_score,na.rm = T)
Colombia_gk <- agg_gk(Colombia,1)

Croatia_att <- mean(Croatia$Attack_score,na.rm = T)
Croatia_mid <- mean(Croatia$mid_score,na.rm = T)
Croatia_def <- mean(Croatia$def_score,na.rm = T)
Croatia_gk <- agg_gk(Croatia,1)

Denmark_att <- mean(Denmark$Attack_score,na.rm = T)
Denmark_mid <- mean(Denmark$mid_score,na.rm = T)
Denmark_def <- mean(Denmark$def_score,na.rm = T)
Denmark_gk <- agg_gk(Denmark,1)

England_att <- mean(England$Attack_score,na.rm = T)
England_mid <- mean(England$mid_score,na.rm = T)
England_def <- mean(England$def_score,na.rm = T)
England_gk <- agg_gk(England,1)

France_att <- mean(France$Attack_score,na.rm = T)
France_mid <- mean(France$mid_score,na.rm = T)
France_def <- mean(France$def_score,na.rm = T)
France_gk <- agg_gk(France,6)

Japan_att <- mean(Japan$Attack_score,na.rm = T)
Japan_mid <- mean(Japan$mid_score,na.rm = T)
Japan_def <- mean(Japan$def_score,na.rm = T)
Japan_gk <- agg_gk(Japan,2)

Mexico_att <- mean(Mexico$Attack_score,na.rm = T)
Mexico_mid <- mean(Mexico$mid_score,na.rm = T)
Mexico_def <- mean(Mexico$def_score,na.rm = T)
Mexico_gk <- agg_gk(Mexico,1)

Portugal_att <- mean(Portugal$Attack_score,na.rm = T)
Portugal_mid <- mean(Portugal$mid_score,na.rm = T)
Portugal_def <- mean(Portugal$def_score,na.rm = T)
Portugal_gk <- agg_gk(Portugal,8)

Russia_att <- mean(Russia$Attack_score,na.rm = T)
Russia_mid <- mean(Russia$mid_score,na.rm = T)
Russia_def <- mean(Russia$def_score,na.rm = T)
Russia_gk <- agg_gk(Russia,1)

Spain_att <- mean(Spain$Attack_score,na.rm = T)
Spain_mid <- mean(Spain$mid_score,na.rm = T)
Spain_def <- mean(Spain$def_score,na.rm = T)
Spain_gk <- agg_gk(Spain,1)

Sweden_att <- mean(Sweden$Attack_score,na.rm = T)
Sweden_mid <- mean(Sweden$mid_score,na.rm = T)
Sweden_def <- mean(Sweden$def_score,na.rm = T)
Sweden_gk <- agg_gk(Sweden,2)

Switzerland_att <- mean(Switzerland$Attack_score,na.rm = T)
Switzerland_mid <- mean(Switzerland$mid_score,na.rm = T)
Switzerland_def <- mean(Switzerland$def_score,na.rm = T)
Switzerland_gk <- agg_gk(Switzerland,1)

Uruguay_att <- mean(Uruguay$Attack_score,na.rm = T)
Uruguay_mid <- mean(Uruguay$mid_score,na.rm = T)
Uruguay_def <- mean(Uruguay$def_score,na.rm = T)
Uruguay_gk <- agg_gk(Uruguay,4)

