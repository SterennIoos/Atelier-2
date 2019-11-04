title: "Atelier 2"
author: "Sterenn IOOS"
date: "10/11/2019"
output: word_document
---
  
  ```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```
## Présentation des vecteurs

Les vecteurs sont l’un des objets de bases de R et correspondent à une liste de valeurs. Leurs propriétés fondamentales sont :
  
  1.les vecteurs sont unidimensionnels (i.e. c’est un objet à une seule dimension, à la différence d’une matrice par exemple) ;
2.toutes les valeurs d’un vecteur sont d’un seul et même type ;
3.les vecteurs ont une longueur qui correspond au nombre de valeurs contenues dans le vecteur.


```{r }
x <- seq(from=0,to=100,by=1)
mean(x)
sd(x)
```

## Including Plots

You can also embed plots, for example:
  
  ```
x <- seq(from=0.1,to=10,by=0.01)
plot(x,log(x),type ='l',col='blue')
```

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
```{r }
x <- c(1,2,4)
x
class(x)
y <- c(sqrt(2),sqrt(3),sqrt(5))
y
class(y)
z <- c('pepito','juanito','zumalacarregui')
z
class(z)
```

Une nouvelle base de données

```{r}
taille <- c(1.88, 1.65, 1.92, 1.76)
taille
class(taille)
sexe <- c("h", "f", "h", "f")
sexe
class(sexe)
```

# fonction rep()

```{r}
x <- rep('pepito')
x
y <- rep(c(sqrt(2),3),4)
y
```

# fonction seq()
```{r}
x <- seq(from=-10,to=10,by=5)
x
```
L'opérateur :

```{r}
x
x [3:5]
length(x[3:5])
```
# Vecteurs remarquables

```{r}
pi
LETTERS
letters
month.name
month.abb
```
# Valeurs manquantes

```{r}
taille <- c(1.88, NA, 1.65, 1.92, 1.76, NA)
taille
mean(taille,na='TRUE')
sd(taille,na='TRUE')
length(taille)
class(taille)
is.na(taille)
summary(taille)
sexe <- c("h", "f", NA, "h", NA, "f")
sexe
```
# Indexation par condition

```{r}
sexe <- c(rep('f',25),rep('h',50))
taille <- rnorm(75,160,5)
bd <- data.frame(sexe,taille)
taille.f <- bd$taille[sexe =='f']
taille.h <- bd$taille[sexe == 'h']
boxplot(taille,taille.f,taille.h)
