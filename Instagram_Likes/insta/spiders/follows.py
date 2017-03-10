import scrapy
import json

class instaSpider(scrapy.Spider):
    name = "follows" #must be unique within a project

    with open("user_urls.txt", "rt") as f:
        start_urls = [url.strip() for url in f.readlines()]
        print(start_urls)

    # start_urls = ['https://www.instagram.com/_blackstage_/?__a=1']


    def parse(self, response): 
    	yield {
        'username' : json.loads(response.xpath('body').extract()[0][9:-11])['user']['username'],
        'full_name' : json.loads(response.xpath('body').extract()[0][9:-11])['user']['full_name'],
        'followers' : json.loads(response.xpath('body').extract()[0][9:-11])['user']['followed_by']['count'],
        'following' : json.loads(response.xpath('body').extract()[0][9:-11])['user']['follows']['count'],
        'insta_id'  : json.loads(response.xpath('body').extract()[0][9:-11])['user']['id'],
        'is_verified' : json.loads(response.xpath('body').extract()[0][9:-11])['user']['is_verified'],
        'posts': json.loads(response.xpath('body').extract()[0][9:-11])['user']['media']['count']
        }

        # url = response.xpath('//div[@class="fullscreen_block"]/ul[@class="pagerblock type_columns1"]/li/a/@href').extract_first()

        # if url is not None:
        #     url = response.urljoin(url)
        #     yield scrapy.Request(url, callback=self.parse)





