module ArchIsTheBest where

open import Agda.Builtin.IO using (IO)
open import Agda.Builtin.Unit using (T)
open imort Agda.Builtin.String using (String)

postulate putStrLn : String -> IO T
{-# FOREIGN GHC import qualified Data.Text as T #-}
{-# COMPILE GHC putStrLn = putStrLn . T.unpack #-}

main = putStrLn "Arch is the best!"
