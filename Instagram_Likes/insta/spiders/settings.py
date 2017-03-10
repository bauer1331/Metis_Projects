BOT_NAME = 'instaSpider'
SPIDER_MODULES = ['instaSpider.spiders']
NEWSPIDER_MODULE = 'instaSpider.spiders'
ITEM_PIPELINES = {
    'scrapy.pipelines.images.ImagesPipeline': 1,
}
IMAGES_STORE = '/Users/bauer/ds/metis/metisgh/local_files/InstaImages'

IMAGES_THUMBS = {
    'small': (50, 50),
    'big': (270, 270),
}
