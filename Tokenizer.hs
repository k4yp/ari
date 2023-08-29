module Tokenizer (Token(..), tokenize) where

import Data.Char (isDigit)

data Token = Number Int
           | Plus
           | Minus
           | LeftParen
           | RightParen

tokenize :: String -> [Token]
tokenize [] = []
tokenize (c:cs)
    | isDigit c = Number (read num) : tokenize rest
    | c == ' '  = tokenize cs
    | c == '+'  = Plus : tokenize cs
    | c == '-'  = Minus : tokenize cs
    | c == '('  = LeftParen : tokenize cs
    | c == ')'  = RightParen : tokenize cs
    | otherwise = error ("Cannot tokenize " ++ [c])
    where (num, rest) = span isDigit (c:cs)