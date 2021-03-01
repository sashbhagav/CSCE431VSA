# frozen_string_literal: true

json.array! @households, partial: 'households/household', as: :household
