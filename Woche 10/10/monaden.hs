type Money = Int

type Account = (Money, Money)

withdraw :: Money -> Account -> Maybe Account                 -- اسحب
withdraw amount (debit, credit) 
                    | amount > 0 = Nothing
                    | debit + amount + credit < 0 = Nothing
                    | otherwise = Just(debit + amount, credit)

--  withdraw (-10) (-12,100)
--  withdraw 10 (-12,100)
--  withdraw (-100) (-12,100)


deposit :: Money -> Account -> Maybe Account     -- حط بالبنك
deposit amount (debit, credit) 
                            | amount  < 0 = Nothing
                            | otherwise =  Just (debit, credit + amount)

-- deposit 10 (-12,100)
bankTag1 :: Maybe Account
bankTag1 = do 
          deposit 99 (0,0)
          withdraw (-2) (0,99)
          withdraw (-15) (-2,99)
          deposit 19 (-17,99)
          withdraw (-80) (-17, 118)

bankTag2 :: Maybe Account
bankTag2 = do 
          deposit 99 (0,0)
          withdraw (-2) (0,99)
          withdraw (-150) (-2,99)
          deposit 19 (-17,99)
          withdraw (-80) (-17, 118)

meinBankTag1 account = deposit 99 account >>= withdraw (-2) >>= withdraw (-150) >>= deposit 19 >>= withdraw (-80)

meinBankTag2 :: Maybe Account
meinBankTag2 = 
    Just (0,200)   -- or return (0,0)
    >>= deposit 99 
    >>= withdraw (-2)
    >>= withdraw (-150)
    >>= deposit 19
    >>= withdraw (-80)


-- GHCI:
-- bankTag1 
-- bankTag2
-- meinBankTag (0,0)
-- meinBankTag (0,200)
-- meinBankTag5 

type Balance = Money

accountState :: Account -> Maybe Balance
accountState (debit,credit) = Just (debit + credit)

bankTag3 :: Maybe Balance
bankTag3 = do 
          start <- return (0,1000)
          first <- deposit 99 start
          second <- withdraw (-2) first
          third <- withdraw (-150) second
          fourth <- deposit 19 third
          fifth <- withdraw (-80) fourth
          accountState fifth

meinBankTag3 :: Maybe Balance
meinBankTag3 = 
    Just (0,200)   -- or return (0,0)
    >>= deposit 99 
    >>= withdraw (-2)
    >>= withdraw (-150)
    >>= deposit 19
    >>= withdraw (-80)
    >>= accountState