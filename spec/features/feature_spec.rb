

feature 'Testing infrastructure' do
  it 'when running displays "testing infrastructure working!"' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end