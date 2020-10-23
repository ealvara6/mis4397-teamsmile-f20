import sys
from recipe_scrapers import scrape_me
import io
scraper = scrape_me(sys.argv[1], wild_mode=True)
list = scraper.links()

copy = ""
recipe_list = []
for i in list:
    if i['href'].find('www.allrecipes.com/recipe/') == 8:
        recipe_link = i['href']
        if recipe_link != copy:
            copy = recipe_link
            recipe_list.append(i['href'])


    def listToString(s):  
    
    # initialize an empty string 
        str1 = ""  
    
    # traverse in the string   
        for ele in s:  
            str1 += ele   
    
    # return string   
        return str1  



for recipe_link in recipe_list:
    scraper = scrape_me(recipe_link)

    with io.open(sys.argv[2], "a", encoding="utf-8") as f:
        f.write(scraper.title() + '^')
        f.write(str(scraper.total_time()) + '^')
        f.write(str(scraper.yields()) + '^')
        f.write(listToString(scraper.ingredients()) + '^')
        f.write(scraper.instructions() + '^')
        f.write(scraper.image() + '^')
        f.write(scraper.host() + '&\n')

f.close