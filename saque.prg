Function saque
LOCAL nsaldo, nsaq, nOpt, nOpt2
    hb_cdpSelect("UTF8")
    cls
    USE Conta1
    nsaldo:=saldo

    ? "Saldo atual: ", Alltrim(Str(nsaldo, 50, 2))
    INPUT "Digite o valor do saque: " to nSaq

    if saldo >= nSaq .AND. nSaq > 0
        
        ? "Você sacou ", Alltrim(Str (nSaq, 20, 2)) 
        ??" e seu saldo atualizado é: ", Alltrim(Str(nsaldo - nSaq, 50, 2))
        nsaldo:= saldo - nSaq

        REPLACE saldo WITH nsaldo
        @5, 5 to 9, 25 DOUBLE
        @6, 6 PROMPT "1 - Novo saque     "
        @7, 6 PROMPT "2 - Voltar ao menu "
        @8, 6 PROMPT "3 - Sair           "

        MENU to nOpt
        do case
        case nOpt == 1
            cls
            saque()
        case nOpt == 2
            cls
            menu()
        case nOpt == 3
            cls
            ?"Encerrando a sessão..."
            ?"Sessão encerrada. Obrigado por escolher os nossos serviços!"
        otherwise
            ?"Opção Inválida"
        endcase
        
        else
            ? "Você não tem saldo suficiente. Seu saldo atual é: ", Alltrim(Str(nsaldo, 50, 2))
            ? "Ou o valor digitado é inválido"
            @5, 5 to 8, 28 DOUBLE
            @6, 6 PROMPT "1 - Tentar novamente? "
            @7, 6 PROMPT "2 - Voltar ao menu    "

        MENU to nOpt2

        do case
            case nOpt2 == 1
                cls
                saque()
            case nOpt2 == 2
                cls
                menu()
            otherwise
                ?""
        endcase
        endif
    

RETURN