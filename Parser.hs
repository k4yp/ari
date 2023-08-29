module Parser (Node(..), parse) where

data Node = Node String String

parse :: String -> Node
parse = number 

number :: String -> Node
number = Node "number" 