# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'groups/index', type: :view do
  before(:each) do
    assign(:groups, [
             Group.create!(
               type: 'Type',
               name: 'Name',
               description: 'Description'
             ),
             Group.create!(
               type: 'Type',
               name: 'Name',
               description: 'Description'
             )
           ])
  end

  it 'renders a list of groups' do
    render
    assert_select 'tr>td', text: 'Type'.to_s, count: 2
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Description'.to_s, count: 2
  end
end
