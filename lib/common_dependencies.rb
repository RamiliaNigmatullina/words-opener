# frozen_string_literal: true

require "active_support/core_ext/module/delegation"
require "active_support/core_ext/object/blank"
require "byebug"
require "interactor"

require_relative "../app/interactors/build_commands"
require_relative "../app/interactors/execute_commands"
require_relative "../app/interactors/extract_words"
require_relative "../app/interactors/open"
