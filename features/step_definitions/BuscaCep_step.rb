Dado("que acessei o site {string}") do |url|
    visit url
    page.save_screenshot('acesso.png')  
end

Quando("faço uma busca por Cep {string}, {string}, {string}, {string}, {string}") do |uf, localidade, tipo, logradouro, numero|
    select uf, from: 'UF'
    fill_in "Localidade" , with: localidade
    select tipo, from: 'Tipo'
    fill_in "Logradouro", with: logradouro
    fill_in "Numero", with: numero
    page.save_screenshot('dados.png')
    first(:css, "input[value='Buscar']").click
    
    sleep 1
    
end

Então("visualizo o cep {string} no resultado da busca") do |cep|
    expect(page).to have_css("td", :text => cep)
     # Validador de resultados 
    page.save_screenshot('screen.png')
    sleep 2


end