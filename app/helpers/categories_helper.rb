module CategoriesHelper
  def ads_count(item)
    Ad.published.where(subcategory_id: item.subcategories).count
  end
end