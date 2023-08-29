module Main where

import System.IO ()
import Tokenizer (Token(..), tokenize)

instance Show Token where
    show (Number n) = "Number " ++ show n
    show Plus = "Plus"
    show Minus = "Minus"
    show LeftParen = "LeftParen"
    show RightParen = "RightParen"

main :: IO ()
main = do
    contents <- readFile "main.en"
    putStrLn contents

    let tokens = tokenize contents
    mapM_ (putStrLn . show) tokens