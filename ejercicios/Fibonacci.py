# serie Fibonacci
#fn=fn-1+fn-2
def fibona(n):
    a,b=0,1
    while a< n:
        print(a, end=' ')
        a,b=b,a+b




#la segunda forma}
def fib(n):
    print('Entrando a la segunda forma  ')
    if n<2:
        return n
    else:
        #fn=fn-1+fn-2
        return(fib(n-1) + fib(n-2))




n1=float(input('ingrese valor a calcular para serie fibonacci:'));
fibona(n1)
fib(n1)
print("Fibonacci series:", end = ' ')
for n1 in range(0, n1):
   print(fibonacciSeries(n), end = ' ')
