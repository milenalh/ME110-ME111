#Exerc�cio 2 - Atividade 6 ME110
x = c(3, 5, 10, 10, 20, 20, 20, 30, 40, 50, 60, 70, 70, 80, 100, 100, 100, 120, 120, 140, 150, 180, 180, 200, 200)
y = c(1.5, 2, 6, 7, 10, 12, 15, 8, 10, 20, 20, 25, 30, 25, 40, 35, 40, 30, 40, 40, 50, 40, 50, 60, 50)
data.frame( x = c(3, 5, 10, 10, 20, 20, 20, 30, 40, 50, 60, 70, 70, 80, 100, 100, 100, 120, 120, 140, 150, 180, 180, 200, 200), y = c(1.5, 2, 6, 7, 10, 12, 15, 8, 10, 20, 20, 25, 30, 25, 40, 35, 40, 30, 40, 40, 50, 40, 50, 60, 50))
df2 <- data.frame( x = c(3, 5, 10, 10, 20, 20, 20, 30, 40, 50, 60, 70, 70, 80, 100, 100, 100, 120, 120, 140, 150, 180, 180, 200, 200), y = c(1.5, 2, 6, 7, 10, 12, 15, 8, 10, 20, 20, 25, 30, 25, 40, 35, 40, 30, 40, 40, 50, 40, 50, 60, 50))
sd(x)
sd(y)
range(x)
range(y)
boxplot(x, col = "lightblue", ylab = "Renda Familiar")
boxplot(y, col = "yellow", ylab = "Gasto com Alimenta��o")
library("ggplot2")
#Para fazer um gr�fico de dispers�o no ggplot2, o primeiro argumento � os dados, e os pontos do gr�fico de dispers�o s�o adicionados atrav�s do argumento geom_point()
ggplot(df2, aes (x= x, y= y)) + geom_point()
m formato de data frame, portanto "df2", depois o uso de "aes" para dizer o que vai ser o eixo x e o que vai ser o eixo y
#o ggplot funciona em camadas,
