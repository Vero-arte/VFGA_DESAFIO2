#
#Hecho con gusto por Veronica F. Garcia Arteaga (UAEH)
#
# LABORATORIO - Desafio 2
#
#cargar datos
#
#
#
#
# cargar libreria ggplot2
library(ggplot2)

# grafica de puntos con colores LEYvd
ggplot(data = gender,
       mapping = aes(x=STATE,
                     y=LEYvd,
                     color= STATE)) +
  geom_point()

#grafica de puntos con colores LEYprop
ggplot(data = gender,
       mapping = aes(x=STATE,
                     y=LEYprop,
                     color= STATE)) +
  geom_point()



# escala discreta LEYer
# haciendo grafica de puntos por pais latinoamericano LEYer
g2<- ggplot(data=gender,
            mapping = aes(x=StatE
                          y=LEYer)) +
  geom_point()

#ver g2
g2


# escala discreta Leynod
# haciendo grafica de puntos por pais latinoamericano Leynod
g3<- ggplot(data=gender,
            mapping = aes(x=StatE
                          y=Leynod)) +
  geom_point()


#ver g3
g3

# haciendo boxplot en paises
g4<- ggplot(data = gender,
            mapping = aes(x=STATE,
                          y=LEYvd,
                          fill= STATE)) +
  geom_boxplot()

#ver g4
g4

#FACETING
# colocando grafica base
p <- ggplot(data=gender,
            mapping = aes(x=STATE,
                          y=LEYsh,
                          color=STATE)) +
  geom_point()

# crear objeto p
p

# facet_wrap (recomendado con una variable)
p+facet_wrap(~STATE)
