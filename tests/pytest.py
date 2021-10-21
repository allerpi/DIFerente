import unittest
from appium import webdriver
import time

desired_caps = dict(
    platformName='Android',
    platformVersion='11',
    automationName='uiautomator2',
    deviceName='SM A015M',
    app='/Users/vpinedagon2000/Documents/School/5_sem/DIFerente/app_dif/build/app/outputs/flutter-apk/app-release.apk'
)

class PythonOrgSearch(unittest.TestCase):

    def setUp(self):
        self.driver = webdriver.Remote('http://localhost:4723/wd/hub', desired_caps)

    def test_navigate(self):
        driver = self.driver

        categories = driver.find_elements_by_xpath('/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/*')
        
        # Go inside each category
        for cat in categories:
            cat.click()
            services = driver.find_elements_by_xpath('/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/*')

            # Go inside each service
            for serv in services:
                serv.click()
                back_to_cat = driver.find_element_by_accessibility_id("Back")
                back_to_cat.click()
            
            back = driver.find_element_by_accessibility_id("Back")
            back.click()
    
        # Check the Google Maps button
        cat = driver.find_element_by_accessibility_id("Salud\nServicios Disponibles: 4")
        cat.click()
        serv = driver.find_element_by_accessibility_id("Estimulación Temprana")
        serv.click()
        map_button = driver.find_element_by_xpath("(//android.view.View[@content-desc=\"Av. México 175, Colonia Santiago Yacuitlalpan, Huixquilucan, C.P. 52766\nHorario disponible en nuestra página de Facebook\"])[1]")
        map_button.click()

        time.sleep(5)

        driver.back()
        driver.back()
        driver.back()

        # Check the Facebook button
        el4 = driver.find_element_by_accessibility_id("Atención jurídica\nServicios Disponibles: 2")
        el4.click()
        el5 = driver.find_element_by_accessibility_id("Subprocuradurías")
        el5.click()
        el6 = driver.find_element_by_accessibility_id("Contáctanos en Facebook")
        el6.click()

        time.sleep(5)

        driver.back()
        driver.back()
        driver.back()


if __name__ == "__main__":
    unittest.main()