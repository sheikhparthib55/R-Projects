#install.packages("pheatmap")
library(pheatmap)
??pheatmap
head(mtcars)
class(mtcars)
dft=scale(mtcars)
pheatmap::pheatmap(dft,
                   border_color = "red",
                   cluster_rows = T,
                   cellwidth = 15)


