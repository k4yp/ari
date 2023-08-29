module Main where

import System.IO ()
import Parser (Node(..), parse)

stringify :: Node -> String
stringify (Node str num) = "type: " ++ str ++ ", value: " ++ num

main :: IO ()
main = do
    contents <- readFile "main.en"
    putStrLn contents

    putStrLn (stringify (parse contents))