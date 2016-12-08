biaya <- c(40, 20, 25, 20, 30, 50, 40, 20, 50, 40, 25, 50)
pembeli <- c(385, 400, 395, 365, 475, 440, 490, 420, 560, 525, 480, 510)

regression <- lm(pembeli ~ biaya)
regression
summary(regression)

print("ini adalah model coeffisient")
coef(regression)
print("menjadi persamaan regresi sebagai berikut")
a<-coef(regression)['(Intercept)']
b<-coef(regression)['biaya']
print(c("pembeli = ",a," + ", b,"*biaya"))


newBiaya=35:46
newBiaya
hasil <- predict(regression, data.frame(biaya=newBiaya))
print("ini adalah hasil prediksi untuk biaya sama dengan 35 ribu rupiah (3.b)")
hasil[1]

print("ini adalah model residual error dari Y atau Banyaknya calon pembeli (3.c)")
resid(regression)