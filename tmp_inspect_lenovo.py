from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import time

options = Options()
options.add_argument('--disable-notifications')
options.add_argument('--disable-popup-blocking')

driver = webdriver.Chrome(options=options)
try:
    url = 'https://www.lenovo.com/in/en/p/laptops/yoga/yoga-pro-series/lenovo-yoga-pro-7i-gen-10-aura-edition-14-inch-intel/83kf001lin'
    driver.get(url)
    wait = WebDriverWait(driver, 30)
    print('page title', driver.title)
    # try direct add to cart
    try:
        btn = wait.until(EC.visibility_of_element_located((By.XPATH, "//button[.//span[@data-tkey='addToCart']]")))
        print('add to cart visible', btn.get_attribute('outerHTML')[:200])
        driver.execute_script("arguments[0].scrollIntoView({block:'center', inline:'center'});", btn)
        time.sleep(1)
        driver.execute_script("arguments[0].click();", btn)
    except Exception as e:
        print('add-to-cart error', e)
    time.sleep(3)
    # click cart icon
    try:
        cart = wait.until(EC.visibility_of_element_located((By.XPATH, "//a[contains(@href,'/cart') or contains(@href,'cart')]")))
        print('cart', cart.get_attribute('outerHTML')[:200])
        cart.click()
    except Exception as e:
        print('cart click error', e)
    time.sleep(5)
    print('cart page title', driver.title, driver.current_url)
    inputs = driver.find_elements(By.XPATH, "//input")
    print('inputs count', len(inputs))
    for i, inp in enumerate(inputs[:20], 1):
        print(i, inp.get_attribute('type'), inp.get_attribute('id'), inp.get_attribute('name'), inp.get_attribute('placeholder'))
    # find pins
    pin_inputs = driver.find_elements(By.XPATH, "//input[contains(translate(@placeholder,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz'),'pin') or contains(translate(@id,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz'),'pin') or contains(translate(@name,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz'),'pin')]")
    print('pin_inputs count', len(pin_inputs))
    for inp in pin_inputs:
        print('pin', inp.get_attribute('type'), inp.get_attribute('id'), inp.get_attribute('name'), inp.get_attribute('placeholder'), inp.get_attribute('outerHTML')[:200])
finally:
    input('press enter to close browser...')
    driver.quit()
