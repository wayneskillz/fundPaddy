require "administrate/base_dashboard"

class NotificationDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    member: Field::BelongsTo,
    id: Field::Number,
    message: Field::Text,
    title: Field::String,
    status: Field::Number,
    recipient_id: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :member,
    :id,
    :message,
    :title,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :member,
    :id,
    :message,
    :title,
    :status,
    :recipient_id,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :member,
    :message,
    :title,
    :status,
    :recipient_id,
  ].freeze

  # Overwrite this method to customize how notifications are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(notification)
  #   "Notification ##{notification.id}"
  # end
end
