module Jekyll
  module PreviewFilter

    def intro(str, moreLink, moreText, splitstr = /\s*<!--break--/)
        text = str.split(splitstr)
        #nb_word = str.length
        text.length == 1 ? str : text[0] + "&hellip;</p><a class='more-link' href=\"" + moreLink + "\"><svg><rect x='0' y='0' fill='none' width='160' height='45' />
  </svg>" + moreText + "</a>"
    end

  end
end

Liquid::Template.register_filter(Jekyll::PreviewFilter)