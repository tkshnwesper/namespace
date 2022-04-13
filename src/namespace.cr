macro namespace(ns, file = __FILE__, line = __LINE__, &block)
  {% ns_module_name = "Namespace_#{ns}".id %}
  {% run_method_name = "run_#{file.gsub(/[^a-zA-Z0-9_]/, "_").id}#{line}".id %}
  module {{ ns_module_name }}
    extend self
    include {{ns}}
    def {{ run_method_name }}
      {{ yield }}
    end
  end
  {{ ns_module_name }}.{{ run_method_name }}
end
