from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.by import By
import time

opts = Options()
opts.add_argument('--disable-notifications')
opts.add_argument('--disable-popup-blocking')
opts.add_argument('--window-size=1600,1200')

driver = webdriver.Chrome(options=opts)
try:
    url = 'https://www.lenovo.com/in/en/p/laptops/yoga/yoga-pro-series/lenovo-yoga-pro-7i-gen-10-aura-edition-14-inch-intel/83kfcto1wwin1'
    driver.get(url)
    time.sleep(10)
    elements = []
    for term in ['Add To Cart', 'Add to Cart', 'Add to cart', 'Add', 'Cart', 'Bag', 'Buy Now', 'Buy']:
        els = driver.find_elements(By.XPATH, f"//*[contains(normalize-space(.), '{term}')]")
        for e in els:
            text = e.text.strip()
            elements.append((term, e.tag_name, text, e.get_attribute('class'), e.get_attribute('id'), e.get_attribute('outerHTML')[:800]))
    with open('lenovo_addtocart_inspect.txt', 'w', encoding='utf-8') as f:
        for term, tag, text, cls, eid, outer in elements:
            f.write(f"TERM={term}\n")
            f.write(f"TAG={tag}\n")
            f.write(f"TEXT={text}\n")
            f.write(f"CLASS={cls}\n")
            f.write(f"ID={eid}\n")
            f.write(f"OUTER={outer}\n")
            f.write("---\n")
    print('wrote lenovo_addtocart_inspect.txt')
finally:
    driver.quit()
