base_url = "http://#{request.host_with_port}"
xml.instruct! :xml, :version=>'1.0'
xml.tag! 'urlset', 'xmlns' => 'http://www.sitemaps.org/schemas/sitemap/0.9' do
  xml.url{
    xml.loc("#{base_url}")
    xml.changefreq("weekly")
    xml.priority(1.0)
  }
  xml.url{
    xml.loc("#{base_url}/about")
    xml.changefreq("weekly")
    xml.priority(1.0)
  }
  xml.url{
    xml.loc("#{base_url}/contact")
    xml.changefreq("weekly")
    xml.priority(1.0)
  }
  xml.url{
    xml.loc("#{base_url}/blogs")
    xml.changefreq("daily")
    xml.priority(0.9)
  }
  @blogs.each do |b|
    xml.url {
      xml.loc("#{base_url}/blogs/#{b.slug.to_s}")
      xml.changefreq("daily")
      xml.priority(0.5)
    }
  end
end