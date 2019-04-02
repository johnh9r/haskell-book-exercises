arith :: Num b => (a -> b) -> Integer -> a -> b
arith f i a = (f a) + (fromInteger i)
{-
 - (+)    :: Num a =>   a      ->    a     ->     a
 - (-)    :: Num a =>   a      ->    a     ->     a
 - (*)    :: Num a =>   a      ->    a     ->     a
 -                      ^       ^    ^      ^     ^
 -                       \      |     \      \    |
 -                        \     |      +---+  \   |
 -                         \    |           \  \  |
 -                          v   v            v  v v
 - arith  :: Num b => (a -> b) -> Integer -> a -> b
 -                     ^  ^          ^     ^
 -                     |  |          |     |
 -                     +  +          |     |
 -                      \/           +-----------+
 -                      /\                 |     |
 -                     v  v                v     v
 - arith f i a =      (f  a)    +   (fromInteger i)
 -}
