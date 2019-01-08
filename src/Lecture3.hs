--------------------------------------------------------------------------------
-- Functional Programming (CS141)                                             --
-- Lecture 3: Basic types                                                     --
--------------------------------------------------------------------------------

module Lecture3 where

import Prelude hiding (const, fst, snd, swap, null, splitAt)

--------------------------------------------------------------------------------
-- Examples of typings

t0 :: Int
t0 = 42

t1 :: Bool
t1 = True

t2 :: Bool
t2 = False

t3 :: Char
t3 = 'c'

t4 :: String
t4 = "Cake"

t5 :: Double
t5 = 0.5

t6 :: Int
t6 = 4 + 8

t7 :: Int
t7 = 2 * 9 + 3

t8 :: Bool
t8 = True && False

t9 :: String
t9 = "AB" ++ "CD"

t10 :: Bool
t10 = even 9

--------------------------------------------------------------------------------
-- Function types

ourNot :: Bool -> Bool
ourNot = \b -> case b of
    True  -> False
    False -> True

ourNot' :: Bool -> Bool
ourNot' b = case b of
    True  -> False
    False -> True

ourNot'' :: Bool -> Bool
ourNot'' True  = False
ourNot'' False = True

t11 :: Bool
t11 = not True


xor :: Bool -> Bool -> Bool
xor = \a -> \b -> case a of
    False -> case b of
        True  -> True
        False -> False
    True  -> case b of
        True  -> False
        False -> True

xor' :: Bool -> Bool -> Bool
xor' a b = case a of
    False -> case b of
        True  -> True
        False -> False
    True  -> case b of
        True  -> False
        False -> True

xor'' :: Bool -> Bool -> Bool
xor'' False True  = True
xor'' False False = False
xor'' True  True  = False
xor'' True  False = True

t12 :: Bool -> Bool
t12 = xor True

--------------------------------------------------------------------------------
-- Module from Lecture 1 with type annotations

daysPerWeek :: Int
daysPerWeek = 7

hoursPerWeek :: Int
hoursPerWeek = daysPerWeek * 24

myFalse, myTrue :: Bool
myFalse = not True
myTrue = not (not True)

--------------------------------------------------------------------------------
-- Polymorphic types

f :: a -> a
f x = x

t13 :: Bool
t13 = f True

const :: a -> b -> a
const x y = x

--------------------------------------------------------------------------------
-- Parameterised types: Tuples

t14 :: (Int, Int)
t14 = (4, 7)

t15 :: (Int, Double)
t15 = (4, 7.0)

t16 :: (Char, Int, String)
t16 = ('a', 9, "Hello")

t17 :: (Bool, Int, Char, Int)
t17 = (True, 4, 'c', 1)

t18 :: ((Int, Char), Bool)
t18 = ((4, 'g'), False)

t19 :: (a -> a, Double)
t19 = (\x -> x, 8.15)

fst :: (a,b) -> a
fst (x,y) = x

snd :: (a,b) -> b
snd (x,y) = y

swap :: (a, b) -> (b, a)
swap (x,y) = (y,x)

--------------------------------------------------------------------------------
-- Parameterised types: Lists

t20 :: [Int]
t20 = [1,2,3]

t21 :: [Bool]
t21 = [True, False, True]

t22 :: [String]
t22 = ["Hello", "World"]

t23 :: [[Int]]
t23 = [[1,2,3],[3],[],[9,9]]

t24 :: Int
t24 = head [1,2,3]

t25 :: [Int]
t25 = tail [1,2,3]

t26 :: [Int]
t26 = take 2 [1,2,3]

t27 :: [Int]
t27 = drop 1 [1,2,3]

null :: [a] -> Bool
null []     = True
null (x:xs) = False

--------------------------------------------------------------------------------

splitAt :: Int -> [a] -> ([a],[a])
splitAt n xs = (take n xs, drop n xs)

--------------------------------------------------------------------------------
