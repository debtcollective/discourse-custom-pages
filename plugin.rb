
register_asset 'stylesheets/common/mods.scss'

after_initialize do
  Category.register_custom_field_type('is_collective', :boolean)
  add_to_serializer(:basic_category, :is_collective) { object.custom_fields['is_collective'] }

  campaigns = TagGroup.where("name = 'Campaigns'")

  Discourse::Application.routes.append do
    get "collectives" => "categories#index"
    get "campaigns" => "tag_groups#show", id: campaigns[0].id
  end
end
