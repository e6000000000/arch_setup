import requests
import os
import re
import shutil
import random


SAVE_DIR = os.path.join(os.path.expanduser('~'), 'Downloads')
LAST_PAGE_NUMBER = 500

if not os.path.exists(SAVE_DIR):
    os.mkdir(SAVE_DIR)

def save_image(url:str):
    image_format = re.search(r'\.([^\.]*)$', url).group(1)
    r = requests.get(url, stream=True)
    if r.status_code != 200:
        raise ConnectionError(f'request code is {r.status_code}')

    file_path = os.path.join(SAVE_DIR, f'anime.{image_format}')
    with open(file_path, 'wb') as file:
        file.raw.decode_content = True
        shutil.copyfileobj(r.raw, file)

    return file_path

def get_random_image_list_url():
    page_num = random.randrange(1, LAST_PAGE_NUMBER)
    return f'https://wall.alphacoders.com/by_category.php?id=3&name=Anime+Wallpapers&page={page_num}'

def get_image_in_site_url(image_list_url:str):
    r = requests.get(image_list_url)
    if r.status_code != 200:
        raise ConnectionError(f'request code is {r.status_code}')
    search_results = re.findall(r'<div class=\"thumb-container-big \" id=\"thumb_([0-9]+)\">', r.text)
    image_id = random.choice(search_results)
    return f'https://wall.alphacoders.com/big.php?i={image_id}'

def get_image_url(image_in_site_url:str):
    r = requests.get(image_in_site_url)
    if r.status_code != 200:
        raise ConnectionError(f'request code is {r.status_code}')

    return re.search(r'<img class=\"main-content\" width=\"[0-9]+\" height=\"[0-9]+\" src=\"([^\"]+)\"', r.text).group(1)

def main():
    random_list_url = get_random_image_list_url()
    image_in_site_url = get_image_in_site_url(random_list_url)
    image_url = get_image_url(image_in_site_url)
    file_path = save_image(image_url)
    print(file_path)

main()
