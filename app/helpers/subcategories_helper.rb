module SubcategoriesHelper
  def subcategories_ads_count(item)
    Ad.where(subcategory_id: item).count
  end
end
