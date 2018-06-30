#### argentina ####
#Attack Mid And Defence
Argentina$att_score <- 0
for (i  in 1:nrow(Argentina)) {
  Argentina[i,"Attack_score"] <- agg_forward(Argentina,i)  
}
Argentina$mid_score <- 0
for (i  in 1:nrow(Argentina)) {
  Argentina[i,"mid_score"] <- agg_mid(Argentina,i)  
}
Argentina$def_score <- 0
for (i  in 1:nrow(Argentina)) {
  Argentina[i,"def_score"] <- agg_def(Argentina,i)  
}

#### Belgium ####
#Attack Mid And Defence
#few rows have been coerced to char instead of int
Belgium$Dribbling <- as.integer(Belgium$Dribbling)
Belgium$Interceptions <- as.integer(Belgium$Interceptions)
Belgium$Sliding.tackle <- as.integer(Belgium$Sliding.tackle)
Belgium$Marking <- as.integer(Belgium$Marking)
Belgium$Long.passing <- as.integer(Belgium$Long.passing)
Belgium$att_score <- 0
for (i  in 1:nrow(Belgium)) {
  Belgium[i,"Attack_score"] <- agg_forward(Belgium,i)  
}
Belgium$mid_score <- 0
for (i  in 1:nrow(Belgium)) {
  Belgium[i,"mid_score"] <- agg_mid(Belgium,i)  
}
Belgium$def_score <- 0
for (i  in 1:nrow(Belgium)) {
  Belgium[i,"def_score"] <- agg_def(Belgium,i)  
}

#### Brazil ####
Brazil$att_score <- 0
for (i  in 1:nrow(Brazil)) {
  Brazil[i,"Attack_score"] <- agg_forward(Brazil,i)  
}
Brazil$mid_score <- 0
for (i  in 1:nrow(Brazil)) {
  Brazil[i,"mid_score"] <- agg_mid(Brazil,i)  
}
Brazil$def_score <- 0
for (i  in 1:nrow(Brazil)) {
  Brazil[i,"def_score"] <- agg_def(Brazil,i)  
}


#### Colombia ####
Colombia$att_score <- 0
for (i  in 1:nrow(Colombia)) {
  Colombia[i,"Attack_score"] <- agg_forward(Colombia,i)  
}
Colombia$mid_score <- 0
for (i  in 1:nrow(Colombia)) {
  Colombia[i,"mid_score"] <- agg_mid(Colombia,i)  
}
Colombia$def_score <- 0
for (i  in 1:nrow(Colombia)) {
  Colombia[i,"def_score"] <- agg_def(Colombia,i)  
}


#### Croatia ####
#few columns have been coerced to char while importing
Croatia$Standing.tackle <- as.integer(Croatia$Standing.tackle)
Croatia$Composure <- as.integer(Croatia$Composure)

Croatia$att_score <- 0
for (i  in 1:nrow(Croatia)) {
  Croatia[i,"Attack_score"] <- agg_forward(Croatia,i)  
}
Croatia$mid_score <- 0
for (i  in 1:nrow(Croatia)) {
  Croatia[i,"mid_score"] <- agg_mid(Croatia,i)  
}
Croatia$def_score <- 0
for (i  in 1:nrow(Croatia)) {
  Croatia[i,"def_score"] <- agg_def(Croatia,i)  
}

#### Denmark ####
Denmark$att_score <- 0
Denmark[,11:60]<- sapply(Denmark[11:60],as.numeric) 

for (i  in 1:nrow(Denmark)) {
  Denmark[i,"Attack_score"] <- agg_forward(Denmark,i)  
}
Denmark$mid_score <- 0
for (i  in 1:nrow(Denmark)) {
  Denmark[i,"mid_score"] <- agg_mid(Denmark,i)  
}
Denmark$def_score <- 0
for (i  in 1:nrow(Denmark)) {
  Denmark[i,"def_score"] <- agg_def(Denmark,i)  
}

#### England ####
England$att_score <- 0
England[,11:60]<- sapply(England[11:60],as.numeric) 

for (i  in 1:nrow(England)) {
  England[i,"Attack_score"] <- agg_forward(England,i)  
}
England$mid_score <- 0
for (i  in 1:nrow(England)) {
  England[i,"mid_score"] <- agg_mid(England,i)  
}
England$def_score <- 0
for (i  in 1:nrow(England)) {
  England[i,"def_score"] <- agg_def(England,i)  
}

#### France ####
France$att_score <- 0
France[,11:60]<- sapply(France[11:60],as.numeric) 

for (i  in 1:nrow(France)) {
  France[i,"Attack_score"] <- agg_forward(France,i)  
}
France$mid_score <- 0
for (i  in 1:nrow(France)) {
  France[i,"mid_score"] <- agg_mid(France,i)  
}
France$def_score <- 0
for (i  in 1:nrow(France)) {
  France[i,"def_score"] <- agg_def(France,i)  
}

#### Japan ####
Japan$att_score <- 0
Japan[,11:60]<- sapply(Japan[11:60],as.numeric) 

for (i  in 1:nrow(Japan)) {
  Japan[i,"Attack_score"] <- agg_forward(Japan,i)  
}
Japan$mid_score <- 0
for (i  in 1:nrow(Japan)) {
  Japan[i,"mid_score"] <- agg_mid(Japan,i)  
}
Japan$def_score <- 0
for (i  in 1:nrow(Japan)) {
  Japan[i,"def_score"] <- agg_def(Japan,i)  
}

#### Mexico ####
Mexico$att_score <- 0
Mexico[,11:60]<- sapply(Mexico[11:60],as.numeric) 

for (i  in 1:nrow(Mexico)) {
  Mexico[i,"Attack_score"] <- agg_forward(Mexico,i)  
}
Mexico$mid_score <- 0
for (i  in 1:nrow(Mexico)) {
  Mexico[i,"mid_score"] <- agg_mid(Mexico,i)  
}
Mexico$def_score <- 0
for (i  in 1:nrow(Mexico)) {
  Mexico[i,"def_score"] <- agg_def(Mexico,i)  
}


#### Portugal ####
Portugal$att_score <- 0
Portugal[,11:60]<- sapply(Portugal[11:60],as.numeric) 

for (i  in 1:nrow(Portugal)) {
  Portugal[i,"Attack_score"] <- agg_forward(Portugal,i)  
}
Portugal$mid_score <- 0
for (i  in 1:nrow(Portugal)) {
  Portugal[i,"mid_score"] <- agg_mid(Portugal,i)  
}
Portugal$def_score <- 0
for (i  in 1:nrow(Portugal)) {
  Portugal[i,"def_score"] <- agg_def(Portugal,i)  
}

#### Russia ####
Russia$att_score <- 0
Russia[,11:60]<- sapply(Russia[11:60],as.numeric) 

for (i  in 1:nrow(Russia)) {
  Russia[i,"Attack_score"] <- agg_forward(Russia,i)  
}
Russia$mid_score <- 0
for (i  in 1:nrow(Russia)) {
  Russia[i,"mid_score"] <- agg_mid(Russia,i)  
}
Russia$def_score <- 0
for (i  in 1:nrow(Russia)) {
  Russia[i,"def_score"] <- agg_def(Russia,i)  
}

#### Spain ####
Spain$att_score <- 0
Spain[,11:60]<- sapply(Spain[11:60],as.numeric) 

for (i  in 1:nrow(Spain)) {
  Spain[i,"Attack_score"] <- agg_forward(Spain,i)  
}
Spain$mid_score <- 0
for (i  in 1:nrow(Spain)) {
  Spain[i,"mid_score"] <- agg_mid(Spain,i)  
}
Spain$def_score <- 0
for (i  in 1:nrow(Spain)) {
  Spain[i,"def_score"] <- agg_def(Spain,i)  
}

####  Sweden ####
Sweden$att_score <- 0
Sweden[,11:60]<- sapply(Sweden[11:60],as.numeric) 

for (i  in 1:nrow(Sweden)) {
  Sweden[i,"Attack_score"] <- agg_forward(Sweden,i)  
}
Sweden$mid_score <- 0
for (i  in 1:nrow(Sweden)) {
  Sweden[i,"mid_score"] <- agg_mid(Sweden,i)  
}
Sweden$def_score <- 0
for (i  in 1:nrow(Sweden)) {
  Sweden[i,"def_score"] <- agg_def(Sweden,i)  
}

#### Switzerland ####
Switzerland$att_score <- 0
Switzerland[,11:60]<- sapply(Switzerland[11:60],as.numeric) 

for (i  in 1:nrow(Switzerland)) {
  Switzerland[i,"Attack_score"] <- agg_forward(Switzerland,i)  
}
Switzerland$mid_score <- 0
for (i  in 1:nrow(Switzerland)) {
  Switzerland[i,"mid_score"] <- agg_mid(Switzerland,i)  
}
Switzerland$def_score <- 0
for (i  in 1:nrow(Switzerland)) {
  Switzerland[i,"def_score"] <- agg_def(Switzerland,i)  
}

#### Uruguay ####

Uruguay$att_score <- 0
Uruguay[,11:60]<- sapply(Uruguay[11:60],as.numeric) 

for (i  in 1:nrow(Uruguay)) {
  Uruguay[i,"Attack_score"] <- agg_forward(Uruguay,i)  
}
Uruguay$mid_score <- 0
for (i  in 1:nrow(Uruguay)) {
  Uruguay[i,"mid_score"] <- agg_mid(Uruguay,i)  
}
Uruguay$def_score <- 0
for (i  in 1:nrow(Uruguay)) {
  Uruguay[i,"def_score"] <- agg_def(Uruguay,i)  
}


