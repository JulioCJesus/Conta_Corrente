REQUEST HB_LANG_PT
REQUEST HB_CODEPAGE_UTF8

PROCEDURE Main
LOCAL nOpt, nDep, nSaq, nSaldo:=0
    hb_langSelect("PT")
    hb_cdpSelect("UTF8")
    SET DATE BRITISH
    SET CENTURY ON
    cls

    ?"Bem vindo ao Light Bank"
    ?"Hoje é", CDoW(date()),",", date()
    ?"Agora são:", time()
    
    @5, 5 to 10, 19 DOUBLE
    @6, 6 PROMPT "1 - Saque   "
    @7, 6 PROMPT "2 - Depósito"
    @8, 6 PROMPT "3 - Saldo   "
    @9, 6 PROMPT "4 - Sair    "
    ?""

    MENU TO nOpt
    do case
        case nOpt == 1
            
            ?"Saldo atual: ", Str(nsaldo, 20, 2)
            INPUT "Digite o valor do saque: " to nSaq
            if nSaldo >= nSaq
            ?"Você sacou ", nSaq, " e seu saldo atualizado é: ", Str(nsaldo - nSaq, 20, 2)
            else
            ?"Você não tem saldo suficiente. Seu saldo atual é: ", Str(nsaldo, 20, 2)
            endif

        case nOpt == 2
            
            ?"Saldo atual: ", Str(nsaldo, 20, 2)
            INPUT "Digite o valor do depósito: " to nDep
            ?"Seu saldo atualizado é de: ", Str(nsaldo + nDep, 20, 2)
             
        case nOpt == 3
            ?"Seu saldo é: ", Str(nsaldo, 20, 2)

        case nOpt == 4
            ?"Encerrando a sessão..."
            ?"Sessão encerrada. Obrigado por escolher os nossos serviços!"

        otherwise
            ?".."              
    endcase
RETURN  