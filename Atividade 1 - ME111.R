## Jogar o dado 1000 vezes
dado = sample(1:6, size = 10000, replace = TRUE)
## Quantas vezes cada face foi tirada
table(dado)
## Frequência relativa de cada face
prop = prop.table(table(dado))
## Fazer o gráfico
barplot(prop, col = "lightblue", xlab = "Faces", ylab = "Frequência Relativa", las = 1, ylim = c(0, 0.20))
## Traçar linha vermelha com a frequência relativa teórica
abline(a = NULL, b = NULL, h = 0.17, v = NULL, lty = 2, col = "Red")
