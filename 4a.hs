import Control.Arrow

main :: IO()
main = do
    input <- getLine
    let n = (read input :: Int)
    putStrLn $ if ((>= 2) *** (== 0)) (n `divMod` 2) == (True, True) then "YES" else "NO"