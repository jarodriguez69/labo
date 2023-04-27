

set.seed( 350003 )

#calcula cuantos encestes logra un jugador con indice de enceste prob
#haciendo qyt tiros libres

ftirar  <- function( prob, qty ){
  return( sum( runif(qty) < prob ) )
}


#defino los jugadores
mejor     <-  0.8
peloton   <-  ( 741:799 ) / 1000
jugadores <-  c( mejor, peloton )

#veo que tiene el vector
jugadores




for( i in 1:10000 ){
  vaciertos  <- mapply( ftirar, jugadores, 100 )  #cada jugador tira 10 tiros libres
  mejor  <- which.max( vaciertos )
  aciertos_torneo  <- vaciertos[ mejor ]

  aciertos_segunda  <- ftirar( jugadores[ mejor ], 100 )

  cat( aciertos_torneo, "\t", aciertos_segunda, "\n" )
}