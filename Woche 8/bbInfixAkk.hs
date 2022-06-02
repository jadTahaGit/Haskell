infixCollect b = col b []
                where col L akk = akk
                      col (K w l r) akk = col l (w: col r akk)