import scrapy
from insta.items import InstaItem


class instaSpider(scrapy.Spider):
    name = "insta" #must be unique within a project

    with open("randUsernames.txt", "rt") as f:
        start_urls = [url.strip() for url in f.readlines()]
        print(start_urls)

    # start_urls = []


    def parse(self, response): 
       for i in response.xpath('//div[@class="fs_blog_module is_masonry this_is_blog"]/div[@class="blogpost_preview_fw"]//div[@class="fw_preview_wrapper"]'):
        
        yield {
        'image_urls' : i.xpath('./div[@class="pf_output_container image"]/a/img/@src').extract(),
        'caption' : i.xpath('./div[@class="pf_output_container image"]/a/img/@alt').extract(),
        'comments' : i.xpath('./div[@class="fw_preview_footer"]/div/div[@class="post-views"]/span/text()').extract(),
        'likes' : i.xpath('./div[@class="fw_preview_footer"]/div/div[@class="gallery_likes gallery_likes_add "]/span/text()').extract(),
        'username' : i.xpath('./div[@class="blogpreview_top"]/div[@class="box_date"]/a/@title').extract(),
        'user_url' : i.xpath('./div[@class="blogpreview_top"]/div[@class="box_date"]/a/@href').extract()
        }

        url = response.xpath('//div[@class="fullscreen_block"]/ul[@class="pagerblock type_columns1"]/li/a/@href').extract_first()

        if url is not None:
            url = response.urljoin(url)
            yield scrapy.Request(url, callback=self.parse)


