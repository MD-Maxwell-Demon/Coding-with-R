# Programma per valutare la crescita di una popolazione,  
# utilizzando lo schema discusso nel testo

rm(list=ls()) # ripulisci il workspace

Dt <- 0.1 # assegna l'intervallo di tempo

m <- 10 # numero di osservazioni

t <- Dt*(0:m) # Vettore tempo, di dimensione m+1

N <-0*(0:m) # Vettore delle popolazioni

N[1] <- 4 # Numero di individui all'istante iniziale 
# (condizione iniziale)

alpha <- 1.5 # valore di alpha, misurato in …… 
# dimensione fisica di alpha ……… (completa i puntini)


incremento <- alpha*Dt 

for( k in 2 : (m+1) ){ 
  #N[k]: nuovo valore 
  #N[k-1]: vecchio valore 
  N[k] <- N[k-1] + incremento # ottieni il nuovo valore 
  #dal vecchio, aggiungendo ad esso un incremento 
}

#FAI UN GRAFICO DEL RISULTATO DELLA SIMULAZIONE DEL MODELLO

x_name <- "t (in giorni)"  
y_name <- "N(t)/N0" 
Titolo <- "Crescita della popolazione riferita alla popolazione iniziale"


plot(t,N/N[1], xlab = x_name, ylab =y_name , main = Titolo) 
# disegna il grafico del modello 
# ascissa = valori del tempo 
# ordinata = valori del rapporto N / N0

lines(t,1+ (alpha * t)/N[1],type="l", col="red")# Funzione teorica
