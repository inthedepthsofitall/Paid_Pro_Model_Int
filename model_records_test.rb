require 'rails_helper'

RSpec.describe Item, type: :model do
  describe 'soft deleting functionality' do
    it 'soft deletes an item' do
      item = Item.create(name: 'Said Item')
      item.soft_delete
      expect(item.deleted_at).not_to be_nil # be_nil is to allow for proper restoration
    end

    it 'restores a soft-deleted item' do
      item = Item.create(name: 'Said Item')
      item.soft_delete
      item.restore
      expect(item.deleted_at).to be_nil
    end
  end

  describe 'default scope' do
    it 'excludes soft-deleted items from normal queries' do
      item1 = Item.create(name: 'Item 1') 
      item2 = Item.create(name: 'Item 2')
      item1.soft_delete

      undeleted_items = Item.all
      expect(undeleted_items).to include(item2)
      expect(undeleted_items).not_to include(item1)
    end
  end
end
