
module Bank( deposit, withdraw, accountState
) where 

type Money = Int

type Account = (Money, Money)

withdraw :: Money -> Account -> Either String Account                 -- اسحب
withdraw amount acc@(debit, credit) 
                    | amount > 0                = Left "Nur Negative Einzahlungen erlaubt!"
                    | withdrawLimit amount      = Left "Transaktionslimit ueberschritten!"
                    | overdraftLimit acc amount = Left "Konto ueberzogen!" 
                    | otherwise                 = Right (debit + amount, credit)

--  withdraw (-10) (-12,100)
--  withdraw 10 (-12,100)
--  withdraw (-100) (-12,100)

withdrawLimit amount1 = amount1 < -1000
overdraftLimit (debit, credit) amount = (debit + credit + amount) < -1000

deposit :: Money -> Account -> Either String Account     -- حط بالبنك
deposit amount (debit, credit)  
                            | amount  < 0 = Left "Nur Positive Einzahlungen erlaubt"
                            | otherwise =  Right (debit, credit + amount)


type Balance = Money

accountState :: Account -> Either String  Balance
accountState (debit,credit) = Right (debit + credit)