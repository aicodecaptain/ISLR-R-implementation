library (ISLR)

names(Smarket )

dim(Smarket )
summary (Smarket )

cor(Smarket[,-9])

attach (Smarket )

plot(Volume)

glm.fit=glm(Direction???Lag1+Lag2+Lag3+Lag4+Lag5+Volume ,data=Smarket ,family =binomial )

summary (glm.fit )

coef(glm.fit)


summary (glm.fit )$coef
summary (glm.fit )$coef [,4]

glm.probs =predict(glm.fit, type ="response")

glm.probs [1:10]

contrasts (Direction )

glm.pred=rep ("Down " ,1250)
glm.pred[glm.probs >.5]=" Up"

table(glm.pred ,Direction)
(507+145) /1250

mean(glm.pred== Direction )


train =(Year <2005)
Smarket.2005= Smarket [! train ,]

dim(Smarket.2005)
Direction.2005= Direction [! train]
