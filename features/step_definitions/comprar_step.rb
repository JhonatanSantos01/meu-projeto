
Quando("seleciono o produto {string}") do |produto|
    sleep 3
    #first(:css, "a[title='#{produto}']>button")
    #elemento = all("a[title='#{produto}']")
    #elemento.click
    #all("button[qa-automation='search-buy-button']")
    #click_link_or_button(".item.card-desktop.card-with-rating.lazy-price.item-desktop--3>a.i.card-link", :match => :first)
    page.execute_script("document.querySelector('.item.card-desktop.card-with-rating.lazy-price.item-desktop--3>a.i.card-link').click();")
    sleep 3

end
  
  Quando("escolho o tamanho {string}") do |string|
    page.execute_script("document.querySelector('#{"a[qa-option='available']"}').click();")
    #click_link_or_button("a[qa-option='available']", :text => "39")
    #find_link("a[qa-option='available']")[:href]



  end
  
  Então("faço a compra do produto") do
    pending # Write code here that turns the phrase above into concrete actions
  end