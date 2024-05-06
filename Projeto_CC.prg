REQUEST HB_CODEPAGE_UTF8
REQUEST HB_LANG_PT
PROCEDURE Main
LOCAL nOpt, nDep, nSaq, nSaldo:=0
    hb_cdpSelect("UTF8")
    hb_langSelect("PT")
    SET DATE BRITISH
    SET CENTURY ON
    cls

    ?"Bem vindo ao Light Bank"
    ?"Hoje é", CDoW(date()),",", date()
    ?"Agora são:", time()
    @5, 5 to 9, 19 DOUBLE
    @6, 6 PROMPT "1 - Saque   "
    @7, 6 PROMPT "2 - Depósito"
    @8, 6 PROMPT "3 - Saldo   "
    ?""

    MENU TO nOpt
    do case
        case nOpt == 1
            
            ?"Saldo atual: ", nSaldo
            INPUT "Digite o valor do saque: " to nSaq
            if nSaldo >= nSaq
            ?"Você sacou ", nSaq, " e seu saldo atualizado é ", Str(nsaldo - nSaq, 20, 2)
            else
            ?"Você não tem saldo suficiente. Seu saldo atual é ", Str(nsaldo, 20, 2)
            endif
        case nOpt == 2
            
            ?"Saldo atual: ", nSaldo
            INPUT "Digite o valor do depósito: " to nDep
            ?"Seu saldo atualizado é de ", Str(nsaldo + nDep, 20, 2)
             
        case nOpt == 3
            ?"Seu saldo é: ", Str(nsaldo, 20, 2)
        otherwise
            ?".."              
    endcase
RETURN  