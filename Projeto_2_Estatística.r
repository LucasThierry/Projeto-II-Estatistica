#Questão 1
got = read.csv("PlanilhaGOT.csv", header=TRUE)
#print(got)

temporadas = got[,1]
episodios = got[,2]
notas = got[,3]
personagens = got[,4]
audiencia = got[,5]

#Questão 2
# media_Notas = mean(notas)
# print(media_Notas)
# desvio_Notas = sd(notas)
#Está faltando calcular a moda.


#Questão 3
# media_Audiencia = mean(audiencia)
# print(media_Audiencia)
# desvio_Audiencia = sd(audiencia)
# print(desvio_Audiencia)
# mediana_Audiencia = median(audiencia)
# print(mediana_Audiencia)


#Questão 4
# maioresQueNota9 = function (got){
#   notas = got[,3]
#   episodios = got[,2]
#   tamanho = length(notas)
#   maiores = c()
#   for(i in 1:tamanho){
#     if(notas[i] >= 9){
#       maiores = append(maiores, as.character(episodios[i]), after = length(maiores))
#       #print(as.character(episodios[i]), max.levels = 0)
#     }
#   }
#   return (maiores)
# }
# 
# maiores = maioresQueNota9(got)
# print(maiores)


#Questão 5
# menor_E_maior = function (got){
#   episodios = got[,2]
#   notas = got[,3]
#   temporadas = got[,1]
#   tamanho = length(notas)
#   resultado = c()
#   maior_Nota = 0
#   menor_Nota = 11
#   maior_Episodio = ""
#   menor_Episodio = ""
# 
#   for(i in 1:8){
#     for(j in 1:tamanho){
#       if((temporadas[j] == i)&&(notas[j] < menor_Nota)){
#         menor_Nota = notas[j]
#         menor_Episodio = episodios[j]
#       }
#       if((temporadas[j] == i)&&(notas[j] > maior_Nota)){
#         maior_Nota = notas[j]
#         maior_Episodio = episodios[j]
#       }
#     }
#     resultado = append(resultado, as.character(menor_Episodio), after = length(resultado))
#     resultado = append(resultado, as.character(maior_Episodio), after = length(resultado))
#     maior_Nota = 0
#     menor_Nota = 11
#   }
#   return (resultado)
# }
# 
# resultado_episodios = menor_E_maior(got)
# resultado_notas = c()
# resultado_temporadas = c()
# tamanho1 = length(notas)
# tamanho2 = length(resultado_episodios)
# 
# for(i in 1:tamanho2){
#   for(j in 1:tamanho1){
#     if(episodios[j] == resultado_episodios[i]){
#       resultado_notas = append(resultado_notas, notas[j], after = length(resultado_notas))
#       resultado_temporadas = append(resultado_temporadas, temporadas[j], after = length(resultado_temporadas))
#     }
#   }
# }
# print(resultado_temporadas)
# print(resultado_notas)
# 
# data1 = data.frame(TITULO = resultado_episodios, NOTA = resultado_notas, TEMPORADA = resultado_temporadas)
# data1 = data1[order(data1[,3]),]
# print(data1)



#Questão 6
# menorDesvio = function(got){
#   temporadas = got[,1]
#   audiencia = got[,5]
#   tamanho = length(notas)
#   menor = 15.5
#   
#   for(i in 1:8){
#     audiencia_temp = c()
#     for(j in 1:tamanho){
#       if(temporadas[j] == i){
#         audiencia_temp = append(audiencia_temp, audiencia[j], after = length(audiencia_temp))
#       }
#     }
#     desvio_temp = sd(audiencia_temp)
#     if(desvio_temp < menor){
#       menor = desvio_temp
#     }
#   }
#   return (menor)
# }
# 
# menor_dp = menorDesvio(got)
# print(menor_dp)


#Questão 7
# media_episodios_Brienne = function(got){
#   personagens = got[,4]
#   notas = got[,3]
#   tamanho = length(notas)
#   procura = "Brienne of Tarth(Gwendoline Christie)"
#   notas_procura = c()
#   
#   for(i in 1:tamanho){
#     personagens2 = unlist(strsplit(as.character(personagens[i]), ","))
#     tamanho_lista = length(personagens2)
#     for(j in 1:tamanho_lista){
#       if(personagens2[j] == procura){
#         notas_procura = append(notas_procura, notas[i], after = length(notas_procura))
#       }
#     }
#   }
#   media_notas = mean(notas_procura)
#   print(media_notas)
# }
# 
# media_episodios_Brienne(got)

