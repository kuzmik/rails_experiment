# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'groups/show', type: :view do
  before(:each) do
    @group = assign(:group, Group.create!(
                              type: 'Type',
                              name: 'Name',
                              description: 'Description'
                            ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Type/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
  end
end
