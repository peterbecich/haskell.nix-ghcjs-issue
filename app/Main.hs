module Main where

-- https://github.com/ghcjs/ghcjs-base#conversion-between-haskell-string-and-javascript-string
import Data.JSString as S

import GHCJS.Marshal (toJSVal_aeson)

foreign import javascript unsafe
  "require('console').log($1)" console_log :: S.JSString -> IO ()

main :: IO ()
main = do
  let message = "yo" :: String
  console_log (S.pack message)

-- main :: IO ()
-- main = putStrLn "Hello, Haskell!"
