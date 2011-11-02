# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{erubis}
  s.version = "2.6.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["makoto kuwata"]
  s.date = %q{2010-06-26}
  s.default_executable = %q{erubis}
  s.description = %q{  Erubis is an implementation of eRuby and has the following features:

  * Very fast, almost three times faster than ERB and about 10% faster than eruby.
  * Multi-language support (Ruby/PHP/C/Java/Scheme/Perl/Javascript)
  * Auto escaping support
  * Auto trimming spaces around '<% %>'
  * Embedded pattern changeable (default '<% %>')
  * Enable to handle Processing Instructions (PI) as embedded pattern (ex. '<?rb ... ?>')
  * Context object available and easy to combine eRuby template with YAML datafile
  * Print statement available
  * Easy to extend and customize in subclass
  * Ruby on Rails support
}
  s.email = %q{kwa(at)kuwata-lab.com}
  s.executables = ["erubis"]
  s.files = ["lib/erubis/context.rb", "lib/erubis/converter.rb", "lib/erubis/engine/ec.rb", "lib/erubis/engine/ejava.rb", "lib/erubis/engine/ejavascript.rb", "lib/erubis/engine/enhanced.rb", "lib/erubis/engine/eperl.rb", "lib/erubis/engine/ephp.rb", "lib/erubis/engine/eruby.rb", "lib/erubis/engine/escheme.rb", "lib/erubis/engine/optimized.rb", "lib/erubis/engine.rb", "lib/erubis/enhancer.rb", "lib/erubis/error.rb", "lib/erubis/evaluator.rb", "lib/erubis/generator.rb", "lib/erubis/helper.rb", "lib/erubis/helpers/rails_form_helper.rb", "lib/erubis/helpers/rails_helper.rb", "lib/erubis/local-setting.rb", "lib/erubis/main.rb", "lib/erubis/preprocessing.rb", "lib/erubis/tiny.rb", "lib/erubis.rb", "bin/erubis", "examples/basic/example.ec", "examples/basic/example.ejava", "examples/basic/example.ejs", "examples/basic/example.eperl", "examples/basic/example.ephp", "examples/basic/example.eruby", "examples/basic/example.escheme", "examples/basic/Makefile", "examples/pi/example.ec", "examples/pi/example.ejava", "examples/pi/example.ejs", "examples/pi/example.eperl", "examples/pi/example.ephp", "examples/pi/example.eruby", "examples/pi/example.escheme", "examples/pi/Makefile", "test/assert-text-equal.rb", "test/data/users-guide/array_example.result", "test/data/users-guide/arraybuffer_example.result", "test/data/users-guide/bipattern-example.rhtml", "test/data/users-guide/bipattern_example.result", "test/data/users-guide/context.rb", "test/data/users-guide/context.yaml", "test/data/users-guide/def_method.rb", "test/data/users-guide/def_method.result", "test/data/users-guide/escape_example.result", "test/data/users-guide/example.ec", "test/data/users-guide/Example.ejava", "test/data/users-guide/example.ejs", "test/data/users-guide/example.eperl", "test/data/users-guide/example.ephp", "test/data/users-guide/example.eruby", "test/data/users-guide/example.escheme", "test/data/users-guide/example1.eruby", "test/data/users-guide/example1.rb", "test/data/users-guide/example1.result", "test/data/users-guide/example10.rb", "test/data/users-guide/example10.result", "test/data/users-guide/example10.xhtml", "test/data/users-guide/example10_x.result", "test/data/users-guide/example11.php", "test/data/users-guide/example11.result", "test/data/users-guide/example11.rhtml", "test/data/users-guide/example11_C.result", "test/data/users-guide/example11_N.result", "test/data/users-guide/example11_php.result", "test/data/users-guide/example11_U.result", "test/data/users-guide/example1_x.result", "test/data/users-guide/example2.eruby", "test/data/users-guide/example2.rb", "test/data/users-guide/example2.result", "test/data/users-guide/example2_trim.result", "test/data/users-guide/example2_x.result", "test/data/users-guide/example3.eruby", "test/data/users-guide/example3.rb", "test/data/users-guide/example31.result", "test/data/users-guide/example32.result", "test/data/users-guide/example3_e.result", "test/data/users-guide/example4.eruby", "test/data/users-guide/example4.rb", "test/data/users-guide/example4.result", "test/data/users-guide/example4_x.result", "test/data/users-guide/example5.eruby", "test/data/users-guide/example5.rb", "test/data/users-guide/example5.result", "test/data/users-guide/example6.rb", "test/data/users-guide/example6.result", "test/data/users-guide/example7.eruby", "test/data/users-guide/example71.result", "test/data/users-guide/example72.result", "test/data/users-guide/example8.eruby", "test/data/users-guide/example8_ruby.result", "test/data/users-guide/example8_yaml.result", "test/data/users-guide/example9.eruby", "test/data/users-guide/example9.rb", "test/data/users-guide/example9.result", "test/data/users-guide/example91.result", "test/data/users-guide/example92.result", "test/data/users-guide/example_c.result", "test/data/users-guide/example_java.result", "test/data/users-guide/example_js.result", "test/data/users-guide/example_perl.result", "test/data/users-guide/example_php.result", "test/data/users-guide/example_scheme.result", "test/data/users-guide/example_scheme_display.result", "test/data/users-guide/fasteruby.rb", "test/data/users-guide/fasteruby.result", "test/data/users-guide/fasteruby.rhtml", "test/data/users-guide/headerfooter-example.eruby", "test/data/users-guide/headerfooter-example2.rb", "test/data/users-guide/headerfooter-example2.rhtml", "test/data/users-guide/headerfooter_example.result", "test/data/users-guide/headerfooter_example2.result", "test/data/users-guide/interpolation_example.result", "test/data/users-guide/main_program1.rb", "test/data/users-guide/main_program1.result", "test/data/users-guide/main_program2.rb", "test/data/users-guide/main_program2.result", "test/data/users-guide/nocode-example.eruby", "test/data/users-guide/nocode-php.result", "test/data/users-guide/nocode_example.result", "test/data/users-guide/normal-eruby-test.eruby", "test/data/users-guide/normal_eruby_test.result", "test/data/users-guide/notext-example.eruby", "test/data/users-guide/notext-example.php", "test/data/users-guide/notext-php.result", "test/data/users-guide/notext_example.result", "test/data/users-guide/percentline-example.rhtml", "test/data/users-guide/percentline_example.result", "test/data/users-guide/printenable_example.result", "test/data/users-guide/printenabled-example.eruby", "test/data/users-guide/printenabled-example.rb", "test/data/users-guide/printstatement_example.result", "test/data/users-guide/simplify_example.result", "test/data/users-guide/stderr.log", "test/data/users-guide/stdout_exmple.result", "test/data/users-guide/stringbuffer_example.result", "test/data/users-guide/tail_260.result", "test/data/users-guide/tailnewline.rhtml", "test/data/users-guide/template1.rhtml", "test/data/users-guide/template2.rhtml", "test/test-engines.rb", "test/test-enhancers.rb", "test/test-erubis.rb", "test/test-main.rb", "test/test-users-guide.rb", "test/test.rb", "test/testutil.rb", "doc/docstyle.css", "doc/users-guide.html", "README.txt", "CHANGES.txt", "MIT-LICENSE", "setup.rb", "contrib/erubis", "contrib/erubis-run.rb", "contrib/inline-require", "benchmark/bench.rb", "benchmark/bench_context.yaml", "benchmark/Makefile", "benchmark/templates/_footer.html", "benchmark/templates/_header.html", "benchmark/templates/bench_erb.rhtml", "benchmark/templates/bench_erubis.rhtml", "benchmark/templates/bench_eruby.rhtml", "doc-api/classes/ActionView/TemplateHandlers/ErubisHandler.html", "doc-api/classes/ActionView.html", "doc-api/classes/ERB.html", "doc-api/classes/Erubis/ArrayBufferEnhancer.html", "doc-api/classes/Erubis/ArrayBufferEruby.html", "doc-api/classes/Erubis/ArrayEnhancer.html", "doc-api/classes/Erubis/ArrayEruby.html", "doc-api/classes/Erubis/Basic/Converter.html", "doc-api/classes/Erubis/Basic/Engine.html", "doc-api/classes/Erubis/Basic.html", "doc-api/classes/Erubis/BiPatternEnhancer.html", "doc-api/classes/Erubis/BiPatternEruby.html", "doc-api/classes/Erubis/CGenerator.html", "doc-api/classes/Erubis/CommandOptionError.html", "doc-api/classes/Erubis/Context.html", "doc-api/classes/Erubis/Converter.html", "doc-api/classes/Erubis/DeleteIndentEnhancer.html", "doc-api/classes/Erubis/DeleteIndentEruby.html", "doc-api/classes/Erubis/Ec.html", "doc-api/classes/Erubis/Ejava.html", "doc-api/classes/Erubis/Ejavascript.html", "doc-api/classes/Erubis/Engine.html", "doc-api/classes/Erubis/Eperl.html", "doc-api/classes/Erubis/Ephp.html", "doc-api/classes/Erubis/ErboutEnhancer.html", "doc-api/classes/Erubis/ErboutEruby.html", "doc-api/classes/Erubis/ErubisError.html", "doc-api/classes/Erubis/Eruby.html", "doc-api/classes/Erubis/EscapedEc.html", "doc-api/classes/Erubis/EscapedEjava.html", "doc-api/classes/Erubis/EscapedEjavascript.html", "doc-api/classes/Erubis/EscapedEperl.html", "doc-api/classes/Erubis/EscapedEphp.html", "doc-api/classes/Erubis/EscapedEruby.html", "doc-api/classes/Erubis/EscapedEscheme.html", "doc-api/classes/Erubis/EscapeEnhancer.html", "doc-api/classes/Erubis/Escheme.html", "doc-api/classes/Erubis/Evaluator.html", "doc-api/classes/Erubis/FastEruby.html", "doc-api/classes/Erubis/Generator.html", "doc-api/classes/Erubis/HeaderFooterEnhancer.html", "doc-api/classes/Erubis/HeaderFooterEruby.html", "doc-api/classes/Erubis/Helpers/RailsFormHelper.html", "doc-api/classes/Erubis/Helpers/RailsHelper/TemplateConverter.html", "doc-api/classes/Erubis/Helpers/RailsHelper.html", "doc-api/classes/Erubis/Helpers.html", "doc-api/classes/Erubis/InterpolationEnhancer.html", "doc-api/classes/Erubis/InterpolationEruby.html", "doc-api/classes/Erubis/JavaGenerator.html", "doc-api/classes/Erubis/JavascriptGenerator.html", "doc-api/classes/Erubis/Main.html", "doc-api/classes/Erubis/NoCodeEnhancer.html", "doc-api/classes/Erubis/NoCodeEruby.html", "doc-api/classes/Erubis/NoTextEnhancer.html", "doc-api/classes/Erubis/NoTextEruby.html", "doc-api/classes/Erubis/NotSupportedError.html", "doc-api/classes/Erubis/OptimizedEruby.html", "doc-api/classes/Erubis/OptimizedGenerator.html", "doc-api/classes/Erubis/OptimizedXmlEruby.html", "doc-api/classes/Erubis/PercentLineEnhancer.html", "doc-api/classes/Erubis/PercentLineEruby.html", "doc-api/classes/Erubis/PerlGenerator.html", "doc-api/classes/Erubis/PhpGenerator.html", "doc-api/classes/Erubis/PI/Converter.html", "doc-api/classes/Erubis/PI/Ec.html", "doc-api/classes/Erubis/PI/Ejava.html", "doc-api/classes/Erubis/PI/Ejavascript.html", "doc-api/classes/Erubis/PI/Engine.html", "doc-api/classes/Erubis/PI/Eperl.html", "doc-api/classes/Erubis/PI/Ephp.html", "doc-api/classes/Erubis/PI/Eruby.html", "doc-api/classes/Erubis/PI/Escheme.html", "doc-api/classes/Erubis/PI/TinyEruby.html", "doc-api/classes/Erubis/PI.html", "doc-api/classes/Erubis/PreprocessingEruby.html", "doc-api/classes/Erubis/PreprocessingHelper.html", "doc-api/classes/Erubis/PrintEnabledEnhancer.html", "doc-api/classes/Erubis/PrintEnabledEruby.html", "doc-api/classes/Erubis/PrintOutEnhancer.html", "doc-api/classes/Erubis/PrintOutEruby.html", "doc-api/classes/Erubis/PrintOutSimplifiedEruby.html", "doc-api/classes/Erubis/RubyEvaluator.html", "doc-api/classes/Erubis/RubyGenerator.html", "doc-api/classes/Erubis/SchemeGenerator.html", "doc-api/classes/Erubis/SimplifiedEruby.html", "doc-api/classes/Erubis/SimplifyEnhancer.html", "doc-api/classes/Erubis/StdoutEnhancer.html", "doc-api/classes/Erubis/StdoutEruby.html", "doc-api/classes/Erubis/StdoutSimplifiedEruby.html", "doc-api/classes/Erubis/StringBufferEnhancer.html", "doc-api/classes/Erubis/StringBufferEruby.html", "doc-api/classes/Erubis/StringIOEruby.html", "doc-api/classes/Erubis/TinyEruby.html", "doc-api/classes/Erubis/XmlEruby.html", "doc-api/classes/Erubis/XmlHelper.html", "doc-api/classes/Erubis.html", "doc-api/created.rid", "doc-api/files/erubis/context_rb.html", "doc-api/files/erubis/converter_rb.html", "doc-api/files/erubis/engine/ec_rb.html", "doc-api/files/erubis/engine/ejava_rb.html", "doc-api/files/erubis/engine/ejavascript_rb.html", "doc-api/files/erubis/engine/enhanced_rb.html", "doc-api/files/erubis/engine/eperl_rb.html", "doc-api/files/erubis/engine/ephp_rb.html", "doc-api/files/erubis/engine/eruby_rb.html", "doc-api/files/erubis/engine/escheme_rb.html", "doc-api/files/erubis/engine/optimized_rb.html", "doc-api/files/erubis/engine_rb.html", "doc-api/files/erubis/enhancer_rb.html", "doc-api/files/erubis/error_rb.html", "doc-api/files/erubis/evaluator_rb.html", "doc-api/files/erubis/generator_rb.html", "doc-api/files/erubis/helper_rb.html", "doc-api/files/erubis/helpers/rails_form_helper_rb.html", "doc-api/files/erubis/helpers/rails_helper_rb.html", "doc-api/files/erubis/local-setting_rb.html", "doc-api/files/erubis/main_rb.html", "doc-api/files/erubis/preprocessing_rb.html", "doc-api/files/erubis/tiny_rb.html", "doc-api/files/erubis_rb.html", "doc-api/files/README_txt.html", "doc-api/fr_class_index.html", "doc-api/fr_file_index.html", "doc-api/fr_method_index.html", "doc-api/index.html", "doc-api/rdoc-style.css"]
  s.homepage = %q{http://www.kuwata-lab.com/erubis/}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{erubis}
  s.rubygems_version = %q{1.4.1}
  s.summary = %q{a fast and extensible eRuby implementation which supports multi-language}
  s.test_files = ["test/test.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<abstract>, [">= 1.0.0"])
    else
      s.add_dependency(%q<abstract>, [">= 1.0.0"])
    end
  else
    s.add_dependency(%q<abstract>, [">= 1.0.0"])
  end
end
