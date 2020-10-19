import sys
from recipe_scrapers import scrape_me
import io
scraper = scrape_me('https://www.allrecipes.com/recipes/78/breakfast-and-brunch/', wild_mode=True)

list = scraper.links()

copy = ""
recipe_list = []
for i in list:
    if i['href'].find('www.allrecipes.com/recipe/') == 8:
        recipe_link = i['href']
        if recipe_link != copy:
            copy = recipe_link
            recipe_list.append(i['href'])

recipe_info_list = []
for recipe in recipe_list:
    scraper = scrape_me(recipe)
    recipe_info_dict = {
        "title" : scraper.title(),
        "total_time" : scraper.total_time(),
        "yields" : scraper.total_time(),
        "ingredients" : scraper.ingredients(),
        "instructions" : scraper.instructions(),
        "image" : scraper.image(),
        "host" : scraper.host()
        }
    recipe_info_dict_copy = recipe_info_dict.copy()
    recipe_info_list.append(recipe_info_dict_copy)

with io.open("breakfast_recipes.txt", "w", encoding="utf-8") as f:
    f.write(str(recipe_info_list).replace("}, ", "};"))
    f.close()