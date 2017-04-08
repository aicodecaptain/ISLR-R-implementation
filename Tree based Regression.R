## fitting regression tree

library (MASS)
set.seed(1)

train=sample(1:nrow(Boston),nrow(Boston)/2)
head(Boston)
tree.boston = tree(medv~.,Boston,subset = train)
summary(tree.boston)
plot(tree.boston )
text(tree.boston ,pretty =0)


cv.boston =cv.tree(tree.boston )
cv.boston
plot(cv.boston$size, cv.boston$dev ,type="b")

prune.boston =prune.tree(tree.boston ,best =5)
plot(prune.boston)
text(prune.boston,pretty = 0)


yhat=predict (tree.boston ,newdata =Boston [-train ,])
boston.test=Boston [-train ," medv"]
plot(yhat, boston.test)
abline(0,1)
mean((yhat -boston.test)^2)
