describe Rouge::Lexers::SQL do
  let(:subject) { Rouge::Lexers::SQL.new }

  describe 'guessing' do
    include Support::Guessing

    it 'guesses by filename' do
      assert_guess :filename => 'foo.sql'
    end

    it 'guesses by mimetype' do
      assert_guess :mimetype => 'text/x-sql'
    end
  end

  describe 'lexing' do
    include Support::Lexing

    it 'lexes the demo with no errors' do
      assert_no_errors(lexing_demo)
    end

    it 'lexes the sample without throwing' do
      lex_sample.to_a
    end
  end
end
