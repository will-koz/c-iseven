module Main (main) where

--the number of lines to be included with the library
-- more lines = better coverage, but more intensive on all compilers involved
iterations = 1024
numbers = [1..]

main = do
    generateHeading
    generateFunctionContent (take iterations numbers)
    generateFooting

-- generate the heading and footing information for the output function
generateHeading, generateFooting :: IO ()
generateHeading = putStrLn "int is_even (int x) {"
generateFooting = putStrLn "}"

-- the important part of generating the content
generateFunctionContent :: [Int] -> IO ()
generateFunctionContent x = mapM_ putLineOfCode x

-- the specific line of code given. mod function can probably be recompiled with an implementation
-- of iseven itself
putLineOfCode :: Int -> IO ()
putLineOfCode x = putStrLn ( "\tif (x == " ++ (show x) ++ ") return " ++ (show(mod x 2)) ++ ";" )
