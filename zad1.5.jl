#Zadatak 5. Napisati funkciju koja za zadatu kvadratnu matricu A, određuje:
#vektor m koji se formira od elemenata sa glavne dijagonale matrice A.
#skalar s koji predstavlja srednju vrednost elemenata iznad glavne dijagonale matrice
#A. (može se koristiti funkcija mean() iz programskog paketa Statistics)

function f1(A)
    m = diag(A)
    maska = ones(Bool,size(A))
    triu!(maska,1)
    s = mean(A[maska])
    return m,s
end   

A 
f1(A)