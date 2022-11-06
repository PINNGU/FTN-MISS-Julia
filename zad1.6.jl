#Zadatak 6. Napisati funkciju koja za zadate kvadratne matrice A i B istih dimenzija određuje:
#vektor m koji se sastoji od elemenata ispod glavne dijagonale matrice A koji su
#pozitivni celi brojevi deljivi sa 3.
#skalar s koji predstavlja srednju vrednost elemenata sa sporedne dijagonale matrice
#B koji su veći od srednje vrednosti elemenata sa glavne dijagonale matrice A

function f1(A,B)
    maska = convert.(Bool, ones(size(A))) 
    tril!(maska,-1)
    m = A[maska .& (A .> 0) .& isinteger.(A) .& (A .% 3 .== 0)]
    mnFirst = mean(diag(A))
    mnSec = diag(reverse(B,dims = 2))
    s = mean(mnSec[mnSec .> mnFirst])
    
    return m,s
    
end
