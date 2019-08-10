#language:pt
Funcionalidade: Buscar Cep nos correios

@busca_cep_localidade
Cenario: Buscar Cep
Dado que acessei o site "http://www.buscacep.correios.com.br/sistemas/buscacep/buscaCep.cfm"
Quando faço uma busca por Cep "SP", "Carapicuiba", "Avenida", "Rui Barbosa", "2995"
Então visualizo o cep "06311-001" no resultado da busca


