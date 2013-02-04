require 'spec_helper'

describe "serial_numbers/edit" do
  before(:each) do
    @serial_number = assign(:serial_number, stub_model(SerialNumber,
      :number => "MyString",
      :trackable => false,
      :item => nil,
      :user => nil
    ))
  end

  it "renders the edit serial_number form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => serial_numbers_path(@serial_number), :method => "post" do
      assert_select "input#serial_number_number", :name => "serial_number[number]"
      assert_select "input#serial_number_trackable", :name => "serial_number[trackable]"
      assert_select "input#serial_number_item", :name => "serial_number[item]"
      assert_select "input#serial_number_user", :name => "serial_number[user]"
    end
  end
end