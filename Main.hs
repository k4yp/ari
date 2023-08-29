module Main where

import System.IO ()
import Tokenizer (Token(..), tokenize)

instance Show Token where
    show (Number num) = "Number " ++ show num
    show (String string) = "String " ++ string
    show Add = "Add"
    show Subtract = "Subtract"
    show LeftParen = "LeftParen"
    show RightParen = "RightParen"

stringify :: [Token] -> IO ()
stringify [] = return ()
stringify (t:ts) = do
    putStrLn (show t)
    stringify ts

main :: IO ()
main = do
    contents <- readFile "main.en"
    putStrLn (contents ++ "\n")

    let tokens = tokenize contents
    stringify tokens