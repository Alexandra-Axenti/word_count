require('capybara/rspec')
  require('./app')
  Capybara.app = Sinatra::Application
  set(:show_exceptions, false)

  describe('the word-count score path', {:type => :feature}) do
    it('processes the user entries and returns an evaluation of how many times a particular word is repeated in a sentence') do
      visit('/')
      fill_in('sentence', :with => "The dog was walking on the street while I was passing by eating a hot-dog.")
      fill_in('word', :with => "dog")
      click_button('Go')
      expect(page).to have_content("The word \"dog\" is repeated 1 time(s) in the sentence \"The dog was walking on the street while I was passing by eating a hot-dog.\" and records a partial match 2 time(s).")
    end
  end
