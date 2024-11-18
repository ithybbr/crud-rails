# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.plural /^(ox)$/i, "\\1en"
#   inflect.singular /^(ox)en/i, "\\1"
#   inflect.irregular "person", "people"
#   inflect.uncountable %w( fish sheep )
# end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym "RESTful"
# end
ActiveSupport::Inflector.inflections do |inflect|
    inflect.uncountable "country"
end
ActiveSupport::Inflector.inflections do |inflect|
    inflect.uncountable "discover"
end
ActiveSupport::Inflector.inflections do |inflect|
    inflect.uncountable "disease"
end
ActiveSupport::Inflector.inflections do |inflect|
    inflect.uncountable "diseasetype"
end
ActiveSupport::Inflector.inflections do |inflect|
    inflect.uncountable "doctor"
end
ActiveSupport::Inflector.inflections do |inflect|
    inflect.uncountable "patientdisease"
end
ActiveSupport::Inflector.inflections do |inflect|
    inflect.uncountable "publicservant"
end
ActiveSupport::Inflector.inflections do |inflect|
    inflect.uncountable "record"
end
ActiveSupport::Inflector.inflections do |inflect|
    inflect.uncountable "specialize"
end
