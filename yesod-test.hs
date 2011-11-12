{-# LANGUAGE MultiParamTypeClasses, TypeFamilies
           , QuasiQuotes, TemplateHaskell
           , OverloadedStrings #-}

import Yesod.Dispatch
import Yesod.Core
import Yesod.Content
import Data.ByteString ( ByteString )
import Network.Wai.Handler.Warp ( run )


data Test = Test

mkYesod "Test" [parseRoutes|
/ TestR GET
|]

instance Yesod Test where
    approot _ = ""
    encryptKey _ = return Nothing

getTestR :: GHandler Test Test RepPlain
getTestR = return . RepPlain $ toContent ("Test " :: ByteString )

main = toWaiAppPlain Test >>= run 3000
