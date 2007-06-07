setContentType("text/html")
setHeader("foo","bar")
setCookie("foo","bar",Sys.time()+1000)
cat("<html><body><h1>Hello World!</h1>")
cat("<pre>")
print(warnings())
cat("search:\n")
print(search())

cat("\n.GlobalEnv:\n")
print(ls(globalenv()))

assign("gfoo","gbar",.GlobalEnv)
if (exists("foo")){
	foo <- foo + 1
} else {
	foo <- 1
}
cat("foo is",foo,"\n<br>");

cat("\nls():\n")
print(ls())

cat("\nSys.getenv():\n")
envs <- Sys.getenv()
for (i in 1:length(envs) ){
	cat("\t",names(envs)[i],":",envs[i],"\n")
}
cat("\njeff\n")
cat("</pre>")
cat("</body></html>")
-2
