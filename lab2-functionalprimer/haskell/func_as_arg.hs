--create inpFunc
inpFunc a b = [a..b] 

--Define applicatorFunc
applicatorFunc inpFunc a b s = if s=='s' then sum (inpFunc a b) else (sum (inpFunc a b))/5  

main = do
    let result = applicatorFunc inpFunc 1 100 'a' --Call applicatorFunc with inpFunc and 'a' as args
    putStrLn("sum = " ++ show(result))