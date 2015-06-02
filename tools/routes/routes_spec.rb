require 'spec_helper'

describe Routes do
  describe 'works like rails url helpers' do
    class TestRoute
      include Routes
    end

    it "can access routes via object" do
      expect(Routes.root_path).to eq url_helper.root_path
    end

    it "can access routes via instance" do
      expect(TestRoute.new.root_path).to eq url_helper.root_path
    end
  end

  describe 'custom paths' do
    # it 'returns product path' do
    #   product = double category_slug: 'category-slug', slug: 'product-slug'
    #   expect(routes.product_path(product)).to eq '/category-slug/product-slug'
    # end
  end
end
