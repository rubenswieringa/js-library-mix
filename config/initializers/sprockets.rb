
class JSTemplateEmbedPreprocessor < Sprockets::Processor
  def evaluate(context, locals)
    data.gsub /@embed(?:\(\s*(['"])(.*?)\1\s*\)|\s+(['"])(.*?)\3)/ do |match|
      path = Regexp.last_match[2] || Regexp.last_match[4]
      path = "/#{path}" unless path[0] == '/'
      path = "#{Rails.root}/app/views#{path}"
      content = File.open( path, 'r' ).read.gsub! /\n/, ''
      "$(#{content.inspect})"
    end
  end
end

Rails.application.assets.register_preprocessor('application/javascript', JSTemplateEmbedPreprocessor)
