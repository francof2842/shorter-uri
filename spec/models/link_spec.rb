require "rails_helper"
RSpec.describe Link, type: :model do
  let(:link) { create(:link) }
  # before do
  #   Link.create(title: "", url: "", identifier: "")
  # end

  it "is created succesfully" do
    expect { link }.not_to raise_error
  end

  it "identifier can't be duplicated" do
    expect { create(:link, identifier: link.identifier) }.to raise_error(ActiveRecord::RecordNotUnique)
  end
end
