#language: pt

@acessando_pjdigital
Funcionalidade: Acesso a funcionalidade Consultar no PJDigital
                Eu como usuário
                Quero consultar o cadastro de clientes PJ ativo no site do PJDigital

Contexto:
        Dado acesso o site do PJDigital com login e senha
        Quando acesso a funcionalidade CAU

        @pj_aces
        Cenário: Acesso a funcionalidade Consultar 
                Dado que estou na tela Cadastrar > Individual
                E preencho os dados do cliente
                Quando clico em salvar
                Então vejo a mensagem “Seus dados foram salvos.” 


        @pj_emp
        Cenário: Preencher os campos da tela Dados da Empresa
                Dados que estou na tela Dados da Empresa
                E preencho os campos obrigatórios
                Quando marco o botão salvar
                Então aparece a mensagem “Seus dados foram salvos.”


        @pj_end
        Cenário: Preencher os campos da tela Endereço
                Dados que estou na tela Endereço
                E preencho os campos 
                Quando clico no botão salvar
                Então vejo os dados salvos

               
        @pj_cont
        Cenário: Preencher os campos da tela Contato
                Dados que estou na tela Contato
                E preencho os campos obrigatórios
                E marco o usuário master 
                Quando clico não opção salvar
                Então os dados são salvos 


        @pj_benef
        Cenário: Preencher os campos da tela Beneficiário Final 
                Dados que estou na tela Contato
                E clico em não localizado
                Quando clico no salvar
                Então retorna a mensagem “Seus dados foram salvos.”

        @pj_cc
        Cenário: Preencher os campos da tela Beneficiário Final 
                Dados que estou na tela Contato
                E clico em não localizado
                Quando clico no elemento salvar
                Então vejo “Seus dados foram salvos.”

        @pj_netb
        Cenário: Integrar no sistema Netbanking  
                Dados que estou na tela Dados da Empresa
                E marco o produto 
                E clico em integrações Netbank 
                Então o sistema retorna a mensagem “Seus dados foram salvos.”









                 

