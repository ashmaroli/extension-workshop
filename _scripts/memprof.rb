# frozen_string_literal: true

require "jekyll"
require "memory_profiler"

MemoryProfiler.report do
  Jekyll::PluginManager.require_from_bundler
  Jekyll::Commands::Build.process({
    "source"      => File.expand_path("."),
    "destination" => File.expand_path("./_site"),
    "verbose"     => true,
  })
  puts ""
end.pretty_print(scale_bytes: true, normalize_paths: true)
