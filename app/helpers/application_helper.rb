module ApplicationHelper
  def full_title(page_title = '')
    base_title = "AIDEA BOX"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
  
  #meta-tags
  def default_meta_tags
    {
      site: 'AIDEA BOX',
      title: '',
      reverse: true,
      charset: 'utf-8',
      description: '3つのワードがランダムで表示される',
      keywords: '',
      canonical: request.original_url,
      separator: '|',
      icon: [
        { href: image_url('favicon.ico') },
        { href: image_url('icon.jpg'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/jpg' },
      ],
      og: {
        site_name: 'AIDEA BOX',
        title: '',
        description: '',
        type: 'website',
        url: request.original_url,
        image: image_url('twitter-card.jpg'),
        locale: 'ja_JP',
      },
      twitter: {
        card: 'summary_large_image',
        site: '@hiding_man1',
        title: 'AIDEA BOX',
        description: '3つのワードがランダムで表示される'
      }
    }
  end
end
