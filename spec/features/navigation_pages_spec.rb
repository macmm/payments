require 'rails_helper'

describe 'Home page' do
  subject { page }
  before(:each) { visit root_path }

  it { should have_link 'Start making payments' }
  it { should have_link 'Sign in'}
end

describe 'Start making payments link' do
  it "navigates to sign up page" do
    visit root_path
    click_on 'Start making payments'
    expect(page).to have_content 'Sign up'
  end
end