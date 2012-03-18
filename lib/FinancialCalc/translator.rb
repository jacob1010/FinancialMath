class FinancialCalc::Translator
  def initialize(language = "english")
    @language = language
  end

  def hi
    case @language
    when "spanish"
      "hola mundo"
    when "korean"
      "anyoung ha se yo"
    when "japanese"
      "こんにちは世界"
    else
      "hello world"
    end
  end
end
