## Multiple Linear Regression

library(MASS)
library(ISLR)

## Multipler linear Regression

lmfit =lm(medv???lstat+age ,data=Boston )

## Print the details of the regression to an External file.

lit <- summary(lm.fit)
capture.output(lit, file="multreg.txt")

lmfit =lm(medv~. ,data=Boston )

?summary.lm

summary(lmfit)
coef(lmfit)

## Update the model by removing the values from 
newlmfit=update (lmfit , ???.-age)
summary(newlmfit)

## Interaction Terms

summary (lm(medv???lstat *age ,data=Boston ))

## Non-Linear 

lm.fit2=lm(medv???lstat +I(lstat ^2))

summary (lm.fit2)

## plot non-linear regression
plot(lm.fit2)


## NON-LINEAR REGRESSION

lm.fit5=lm(medv???poly(lstat ,5))
summary(lm.fit5)


## logistic regression

summary (lm(medv???log(rm),data=Boston ))


## Quatitative data in linear models

lm.fit =lm(Sales???.+ Income :Advertising +Price :Age ,data=Carseats )

summary(lm.fit)

attach(Carseats)
contrasts (ShelveLoc)


LoadLibraries=function (){
   library (ISLR)
   library (MASS)
   print (" The libraries have been loaded .")
}
LoadLibraries()
