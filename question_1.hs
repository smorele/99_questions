module Questions where

{--
1 Problem 1
(*) Find the last element of a list.

(Note that the Lisp transcription of this problem is incorrect.)

Example in Haskell:

Prelude> myLast [1,2,3,4]
4
Prelude> myLast ['x','y','z']
'z'
-}

-- use the last function
myLast :: [a] -> a
myLast [] = error "No end in empty list"
myLast [x] = x
myLast (x:xs) = last xs

-- use the list length
myLast' :: [a] -> a
myLast' [] = error "No end in empty list"
myLast' [x] = x
myLast' (x:xs) = xs !! (length xs - 1)

-- reverse the list and take the first element
myLast'' :: [a] -> a
myLast'' [] = error "No end in empty list"
myLast'' [x] = x
myLast'' (x:xs) = reverse xs !! 0
