class ParseEmail
  def initialize(email)
    @email = email
  end

  def call
    data = {}

    %w(name phone car value year).each do |content|
      data[content] = find_content(I18n.t(content), html_doc)
    end

    link_car = html_doc.css("b:contains('#{I18n.t('link_car')}')").last.next_element&.text

    data['link_car'] = link_car

    data
  end

  private

  attr_reader :email

  def html_doc
    html_doc = Nokogiri::HTML(email.body.to_s)
    html_doc.search('br').remove

    @html_doc ||= html_doc
  end

  def find_content(str, html_doc)
    value = "b:contains('#{str}')"

    html_doc.css(value).last&.next_sibling&.text
  end
end
