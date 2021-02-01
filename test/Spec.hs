import           Lib                            ( libraryFunction )
import           SpecHelper                     ( testHelper )


main :: IO ()
main = do
    testHelper -- Jump to defintion with testHelper is working
    libraryFunction -- Jump to defintion with libraryFunction is not working
