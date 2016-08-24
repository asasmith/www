transform = require './helpers/transform'

module.exports = 
  access_token: process.env.CONTENTFUL_API_KEY
  management_token: process.env.CONTENTFUL_MAN_KEY
  space_id: '1ipf5oqx1rxu'
  content_types:
    page:
      id: 'page'
      filters: {
                'order': 'sys.createdAt'
               }
      write: 'data/page.json'
    index:
      id: 'page'
      filters: {
                'sys.id': '2EP8iApoBCGmImscKyUsgg'
               }
      write: 'data/page/index.json'
    blog:
      id: 'page'
      filters: {
                'sys.id': '7u7GKPsWJOoCEKeoGoUMm2'
               }
      write: 'data/page/blog.json'
    work:
      id: 'page'
      filters: {
                'sys.id': '5sKxcqT8CkwawyI0MM4OEE'
               }
      write: 'data/page/blog.json'
    about:
      id: 'page'
      filters: {
                'sys.id': '2tHksa8Eu8kWcQ624i6U0A'
               }
      write: 'data/page/about.json'
    contact:
      id: 'page'
      filters: {
                'sys.id': '55jkHpoleoWqwkMGMYucWC'
               }
      write: 'data/page/contact.json'
    terms:
      id: 'page'
      filters: {
                'sys.id': '2TR2BYxApic8oQ00QAIwEU'
               }
      write: 'data/page/terms.json'
    privacy:
      id: 'page'
      filters: {
                'sys.id': '42xBBSeONOeiUeqCMYC6mI'
               }
      write: 'data/page/privacy.json'
    animation:
      id: 'page'
      filters: {
                'sys.id': '2eT6mhSjNW88UAMm60EIMU'
               }
      write: 'data/page/animation.json'
    culture:
      id: 'page'
      filters: {
                'sys.id': '6Cs8hXvY9GeeoKmgUcccQ'
               }
      write: 'data/page/culture.json'
    gear:
      id: 'page'
      filters: {
                'sys.id': '5bpNCvwf7aesAWsmeOIQmu'
               }
      write: 'data/page/gear.json'
    method:
      id: 'page'
      filters: {
                'sys.id': '1uVStyEiYwyyegms0kGIUw'
               }
      write: 'data/page/method.json'
    news:
      id: 'page'
      filters: {
                'sys.id': '3rlg3P0Nv2E6yS0WaSSioO'
               }
      write: 'data/page/news.json'
    road:
      id: 'page'
      filters: {
                'sys.id': '2KvZKIeonKC8E64EWUeS2m'
               }
      write: 'data/page/road.json'
    thanks:
      id: 'page'
      filters: {
                'sys.id': '5qXqpTzJSMy8MGQgmw2uWU'
               }
      write: 'data/page/thanks.json'
    projects:
      id: 'allWork'
      filters: {
                'order': 'fields.slot'
               }
      write: 'data/projects.json'
    videos:
      id: 'work'
      template: 'views/_layouts/_video.jade'
      path: (entry) -> "work/#{entry.permalink}"
      write: 'data/videos.json'
    case_studies:
      id: 'caseStudy'
      template: 'views/_layouts/_case-study.jade'
      path: (entry) -> "work/#{entry.permalink}"
      transform: transform
      write: 'data/case-studies.json'
    posts:
      id: 'blog'
      template: 'views/_layouts/_post.jade'
      path: (entry) -> "blog/#{entry.permalink}"
      transform: transform
      write: 'data/posts.json'
    featured_post:
      id: 'blog'
      template: 'views/_layouts/_post.jade'
      path: (entry) -> "blog/#{entry.permalink}"
      filters: {
                'limit': '1',
                'fields.feature': 'true',
                'order': '-sys.createdAt'
               }
      transform: transform
    animation_category:
      id: 'blog'
      template: 'views/_layouts/_post.jade'
      path: (entry) -> "blog/#{entry.permalink}"
      filters: {
                'order': '-fields.date',
                'fields.category.sys.id': '5607jfwr8QYki6IcUiueCY'
               }
      transform: transform
    culture_category:
      id: 'blog'
      template: 'views/_layouts/_post.jade'
      path: (entry) -> "blog/#{entry.permalink}"
      filters: {
                'order': '-fields.date',
                'fields.category.sys.id': '57xrbtbFZuYsO4qGY2Y2q0'
               }
      transform: transform
    gear_category:
      id: 'blog'
      template: 'views/_layouts/_post.jade'
      path: (entry) -> "blog/#{entry.permalink}"
      filters: {
                'order': '-fields.date',
                'fields.category.sys.id': '2xx0FKPSRmm0cKEu2SGMkK'
               }
      transform: transform
    method_category:
      id: 'blog'
      template: 'views/_layouts/_post.jade'
      path: (entry) -> "blog/#{entry.permalink}"
      filters: {
                'order': '-fields.date',
                'fields.category.sys.id': '6EfFP66ZckS2OYWa8u28EG'
               }
      transform: transform
    news_category:
      id: 'blog'
      template: 'views/_layouts/_post.jade'
      path: (entry) -> "blog/#{entry.permalink}"
      filters: {
                'order': '-fields.date',
                'fields.category.sys.id': '5o9c9wcypUEoOUSSmak8mM'
               }
      transform: transform
    road_category:
      id: 'blog'
      template: 'views/_layouts/_post.jade'
      path: (entry) -> "blog/#{entry.permalink}"
      filters: {
                'order': '-fields.date',
                'fields.category.sys.id': '4nMklZwz2oA4Uc0mCMiciy'
               }
      transform: transform
    team:
      id: 'team'
      write: 'data/team.json'
    quotes:
      id: 'quote'
      filters: {'order': '-sys.createdAt'}
    picks:
      id: 'picks'
      filter: {'limit': '3'}
      write: '/data/picks.json'
