
register_asset 'stylesheets/common/mods.scss'

after_initialize do

  class ::CollectivesController < ::CategoriesController
  end

  Category.register_custom_field_type('is_collective', :boolean)
  add_to_serializer(:basic_category, :is_collective) { object.custom_fields['is_collective'] }

  Discourse::Application.routes.append do
    get "collectives" => "collectives#index"
  end
end
