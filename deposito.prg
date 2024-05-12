Function deposito
LOCAL nsaldo:=0, nDep, nOpt, nOpt2
    hb_cdpSelect("UTF8")
    cls
    USE Conta1
    nsaldo:= saldo
    ? "Saldo atual: ", Alltrim(Str(nsaldo, 50, 2))
    INPUT "Digite o valor do depósito: " to nDep
    
    if nDep >= 0
    ? "Seu saldo atualizado é de: ", Alltrim(Str(nsaldo + nDep, 50, 2))
    nsaldo:= saldo + nDep    
    REPLACE Saldo WITH nsaldo
    @5, 5 to 9, 25 DOUBLE
    @6, 6 PROMPT "1 - Novo depósito  "
    @7, 6 PROMPT "2 - Voltar ao menu "
    @8, 6 PROMPT "3 - Sair           "

    MENU to nOpt
    do case
    case nOpt == 1
        cls
        deposito()
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
    elseif nDep < 0
        ?"Valor inválido"
        @5, 5 to 8, 28 DOUBLE
        @6, 6 PROMPT "1 - Tentar novamente? "
        @7, 6 PROMPT "2 - Voltar ao menu    "

        MENU to nOpt2

        do case
            case nOpt2 == 1
                cls
                deposito()
            case nOpt2 == 2
                cls
                menu()
            otherwise
                ?""
        endcase

    endif
    

RETURN