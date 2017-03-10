import scrapy


class instaSpider(scrapy.Spider):
    name = "instaUsers" #must be unique within a project
        
    start_urls = ['http://www.imgrum.org/']


    def parse(self, response): 
       for i in response.xpath('//div[@class="fs_blog_module is_masonry this_is_blog"]/div[@class="blogpost_preview_fw"]//div[@class="fw_preview_wrapper"]'):
        
        yield {
        'user_url' : i.xpath('./div[@class="blogpreview_top"]/div[@class="box_date"]/a/@href').extract()
        }

        url = response.xpath('//div[@class="fullscreen_block"]/ul[@class="pagerblock type_columns1"]/li/a/@href').extract_first()

        if url is not None:
            url = response.urljoin(url)
            yield scrapy.Request(url, callback=self.parse)
