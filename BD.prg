Function criarCC
LOCAL nOpt, aCC := {{"Saldo", "N", 20, 2}}
    cls
    
    IF .NOT. FILE ("Conta1.dbf")
        DBCREATE ("Conta1", aCC)        
    ENDIF
    
    ? "Conta criada com sucesso"
    @5, 5 to 8, 25 DOUBLE
    @6, 6 PROMPT "1 - Voltar ao menu "
    @7, 6 PROMPT "2 - Sair           "
    MENU to nOpt
    do case
    case nOpt == 1
        cls
        menu()
    case nOpt == 2
        cls
        ?"Encerrando a sessão..."
        ?"Sessão encerrada. Obrigado por escolher os nossos serviços!"
    otherwise
        ?"Opção Inválida"
    endcase
RETURN nil