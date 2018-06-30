#function to check for aggregate of forwards
agg_forward <- function(team,playerID){
 # print(team[1,])
att_score <- sum(team[playerID,c("Acceleration","Aggression","Agility","Balancea","Ball.control","Composure","Crossing","Curve","Dribbling","Finishing","Free.kick.accuracy","Heading.accuracy","Interceptions","Jumping","Penalties","Long.shots","Positioning","Reactions","Short.passing","Shot.power","Sprint.speed","Stamina","Strength","Vision","Volleys","CAM","CF","LAM","LF","LS","LW","RAM","RF","RS","RW","ST")],na.rm = T)
return(att_score)
}

agg_mid <- function(team,playerID){
  mid_score <- sum(team[playerID,c("Acceleration","Aggression","Agility","Balancea","Ball.control","Composure","Crossing","Curve","Dribbling","Free.kick.accuracy","Heading.accuracy","Interceptions","Jumping","Long.passing","Long.shots","Marking","Positioning","Reactions","Short.passing","Shot.power","Sliding.tackle","Stamina","Standing.tackle","Strength","Vision","Volleys","CAM","CDM","CM","LAM","LCM","LDM","LM","RAM","RCM","RDM","RM")])
  return(mid_score)  
}

agg_def <- function(team,playerID){
   def_score <- sum(team[playerID,c("Acceleration","Aggression","Agility","Balancea","Ball.control","Composure","Heading.accuracy","Interceptions","Jumping","Long.passing","Marking","Positioning","Reactions","Short.passing","Shot.power","Sliding.tackle","Stamina","Standing.tackle","Strength","Vision","CB","CDM","LB","LCB","LDM","RB","RCB","RDM","RWB","LWB")])
return(def_score)
}


agg_gk <- function(team,playerID){
  gk_score <- sum(team[playerID,c("Balancea","Ball.control","Composure","GK.diving","GK.handling","GK.kicking","GK.positioning","GK.reflexes","Interceptions","Jumping","Long.passing","Long.shots","Marking","Positioning","Reactions","Short.passing","Strength","Vision")])
  return(gk_score)
}
