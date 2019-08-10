
Quando("faço o login no site {string}, {string}") do |username, password|
    fill_in "username" , with: username
    fill_in "password" , with: password
    #first(:css, "input[value='Acessar conta']").click
    click_button("Acessar conta")
end

Quando("faço uma pesquisa por {string}") do |q|      
    fill_in "q" , with: q
    Capybara.ignore_hidden_elements = true
    #first(:css, "input[value='Buscar']").click
    click_button 'Buscar'
end
    
Então("visualizo o resultado da busca da pagina") do
    #page.has_text?()
    
end
