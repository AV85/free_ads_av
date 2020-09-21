module SubcategoriesHelper
  def subcategories_ads_count(item)
    Ad.published.where(subcategory_id: item).count
  end
end
