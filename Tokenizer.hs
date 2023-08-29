module Tokenizer (Token(..), tokenize) where

import Data.Char (isDigit, isLetter)

data Token = Number Int
           | String String
           | Add
           | Subtract
           | LeftParen
           | RightParen

tokenize :: String -> [Token]
tokenize [] = []
tokenize (c:cs)
    | isDigit c = Number (read num) : tokenize restNum
    | c == '"'  = let (string, restString) = span (/= '"') cs 
                  in String string : tokenize (drop 1 restString)
    | c == ' '  = tokenize cs
    | c == '+'  = Add : tokenize cs
    | c == '-'  = Subtract : tokenize cs
    | c == '('  = LeftParen : tokenize cs
    | c == ')'  = RightParen : tokenize cs
    | otherwise = error ("Cannot tokenize " ++ [c])
    where (num, restNum) = span isDigit (c:cs)
