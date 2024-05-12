REQUEST HB_LANG_PT
REQUEST HB_CODEPAGE_UTF8

Function menu()
LOCAL nOpt:= 0
    hb_cdpSelect("UTF8")
    hb_langSelect("PT")
    SET DATE BRITISH
    SET CENTURY ON
    cls

    ?"Bem vindo ao Light Bank"
    ?"Hoje é", CDoW(date()),",", date()
    ?"Agora são:", time()
    
    
    
        @5, 5 to 10, 24 DOUBLE
        @6, 6 PROMPT "1 - Abrir Conta   "
        @7, 6 PROMPT "2 - Depósito      "
        @8, 6 PROMPT "3 - Saque         "
        @9, 6 PROMPT "4 - Sair          "
        ?""
    

    MENU TO nOpt
        do case
            case nOpt == 1 //Chama o método criar conta no BD, e gera um registro em branco
            
                criarCC()
                USE Conta1
                APPEND BLANK
            
            case nOpt == 2 //Chama o método deposito para adicionar valor ao saldo
            
                deposito()
            
            case nOpt == 3 //Chama o método saque para subtrair valor do saldo
            
                saque()
            case nOpt == 4
                cls
                ?"Encerrando a sessão..."
                ?"Sessão encerrada. Obrigado por escolher os nossos serviços!"

            otherwise
                ?".."              
        endcase
    
RETURN  