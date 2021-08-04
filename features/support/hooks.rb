# frozen_string_literal: true

require "report_builder"

After do |scenario|
  scenario_name = scenario.name.gsub(/\s+/, "").tr("/", "")

  if scenario.failed?
    tirar_foto(scenario_name.downcase!, "falhou")
  else
    tirar_foto(scenario_name.downcase!, "passou")
  end
end
