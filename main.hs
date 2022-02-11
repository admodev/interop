module Main where

class SumRes r where
  sumOf :: Integer -> r

instance SumRes Integer where
  sumOf = id

instance (Integral a, SumRes r) => SumRes (a -> r) where
  sumOf x = sumOf . (x +) . toInteger

suma :: Integer
suma = sumOf 2 4 6 9

main::IO()
main = do
  putStrLn $ show suma
