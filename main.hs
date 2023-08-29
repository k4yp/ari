import System.IO

data Node = Node [Char] [Char]

parse :: [Char] -> Node
parse input = do
    number input

number :: [Char] -> Node
number value = do 
   Node "number" value

stringify :: Node -> [Char]
stringify (Node str num) = "type: " ++ str ++ ", value: " ++ num

main :: IO ()
main = do
    contents <- readFile "main.en"
    putStrLn contents

    putStrLn (stringify (parse contents))