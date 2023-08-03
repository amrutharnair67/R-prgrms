library(ggplot2)
View(diamonds)
ggplot(diamonds,aes(x=carat))+geom_histogram(fill="Yellow",color="black")
ggplot(diamonds,aes(x=carat))+geom_histogram(binwidth=0.01,fill="Yellow",color="brown")
ggplot(diamonds,aes(x=carat,y=price,color=clarity))+geom_point()
ggplot(diamonds,aes(x=carat,y=price,color=clarity))+geom_point()
ggplot(diamonds,aes(x=carat,y=price))+geom_point()+facet_wrap(~ clarity)+labs(title ="Scatter Plot of Carat vs Price by Clarity",x="Carat",y="Price")+theme_minimal()+theme(plot.title=element_text(hjust=0.5,size=16,face="bold"),panel.background=element_rect(fill="lightgray"))
ggplot(diamonds, aes(x = cut, y = carat)) +
  geom_violin(fill="lightblue",color="black",scale="width",trim=FALSE)+geom_boxplot(width=0.2,fill="white",color="black",outlier.shape=NA)
