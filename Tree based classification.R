
library (tree)
library (ISLR)

attach (Carseats )
High=ifelse (Sales <=8," No"," Yes ")
Carseats <- data.frame(Carseats,High)

Carseats
tree.Carseats =tree(High~.-Sales,Carseats)
summary(tree.Carseats)

plot(tree.Carseats)
text(tree.Carseats ,pretty =0)

tree.Carseats

set.seed(2)
train=sample(1:nrow(Carseats),200)
Carseats.test=Carseats[-train,]
High.test=High[-train]
tree.Carseats=tree(High~.-Sales,Carseats,subset = train)
tree.pred=predict(tree.Carseats,Carseats.test,type="class")
table(tree.pred,High.test)


(89+57)/200


set.seed(3)
cv.Carseats=cv.tree(tree.Carseats,FUN=prune.misclass)
names(cv.Carseats)
cv.Carseats
par(mfrow =c(1,2))
plot(cv.Carseats$size ,cv.Carseats$dev ,type="b")
plot(cv.Carseats$k ,cv.Carseats$dev ,type="b")


prune.carseats =prune.misclass (tree.Carseats ,best =5)
plot(prune.carseats)
text(prune.carseats ,pretty =0)

tree.pred=predict(prune.carseats, Carseats.test,type= "class")
table(tree.pred ,High.test)

(73+64)/200
