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
    meta:
      id: 'meta'
      filters: {
                'order': 'sys.createdAt'
               }
      write: 'data/meta.json'
    work:
      id: 'allWork'
      filters: {
                'order': 'fields.slot'
               }
      write: 'data/all-work.json'
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
    animation:
      id: 'blog'
      template: 'views/_layouts/_post.jade'
      path: (entry) -> "blog/#{entry.permalink}"
      filters: {
                'order': '-fields.date',
                'fields.category.sys.id': '5607jfwr8QYki6IcUiueCY'
               }
      transform: transform
    culture:
      id: 'blog'
      template: 'views/_layouts/_post.jade'
      path: (entry) -> "blog/#{entry.permalink}"
      filters: {
                'order': '-fields.date',
                'fields.category.sys.id': '57xrbtbFZuYsO4qGY2Y2q0'
               }
      transform: transform
    gear:
      id: 'blog'
      template: 'views/_layouts/_post.jade'
      path: (entry) -> "blog/#{entry.permalink}"
      filters: {
                'order': '-fields.date',
                'fields.category.sys.id': '2xx0FKPSRmm0cKEu2SGMkK'
               }
      transform: transform
    method:
      id: 'blog'
      template: 'views/_layouts/_post.jade'
      path: (entry) -> "blog/#{entry.permalink}"
      filters: {
                'order': '-fields.date',
                'fields.category.sys.id': '6EfFP66ZckS2OYWa8u28EG'
               }
      transform: transform
    news:
      id: 'blog'
      template: 'views/_layouts/_post.jade'
      path: (entry) -> "blog/#{entry.permalink}"
      filters: {
                'order': '-fields.date',
                'fields.category.sys.id': '5o9c9wcypUEoOUSSmak8mM'
               }
      transform: transform
    road:
      id: 'blog'
      template: 'views/_layouts/_post.jade'
      path: (entry) -> "blog/#{entry.permalink}"
      filters: {
                'order': '-fields.date',
                'fields.category.sys.id': '4nMklZwz2oA4Uc0mCMiciy'
               }
      transform: transform
    quotes:
      id: 'quote'
      filters: {'order': '-sys.createdAt'}
    picks:
      id: 'picks'
      filter: {'limit': '3'}
      write: '/data/picks.json'
