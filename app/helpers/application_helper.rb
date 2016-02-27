module ApplicationHelper
  def header(text)
    content_for(:header) {text.to_s}
  end

  def render_stars(value)
    if value.nil?
      value = 0
    end

      output = ''

      # Saved to variable for efficiency
      floored = value.floor

      # Adding full stars: If value is 2.5 then floored
      # will be 2 (two full stars)
      floored.times { output << image_tag('star-on.png') }

      # Getting the decimal part of the value by subtracting the
      # floored value, by the value. So if value is 2.7, then will be
      # 0.7 (Changed to >= to account for ability to use numbers like
      # 2.7 and will display a half star. If you would like to only
      # handle 0.5 then change back to ==)
      if (value - floored) >= 0.5
        output << image_tag('star-half.png')
        # Fehler gefixt, da ein Stern zu viel bei x.5 Sternen angezeigt wurde.
        floored = floored + 1
      end

      # Completes sequence of 5 stars. Ex: if value is 2.7 then 5 - 2.7
      # is 2.3 The output will already have 2 full stars and 1 half star
      # so by flooring 2.3 we will get 2, which completes the total of 5
      #stars
      (5 - floored).times { output << image_tag('star-off.png') }
      output.html_safe
  end

  def round(value, count = 1)
    if !value.nil?
      value.round(count)
    end
  end
end
