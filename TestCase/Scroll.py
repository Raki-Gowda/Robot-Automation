from appium.webdriver.common.appiumby import AppiumBy


class ScrollUtil:
 def scrollToTextByAndroidUIAutomator(text, driver):
    driver.find_element(AppiumBy.ANDROID_UIAUTOMATOR, "new UiScrollable(new UiSelector().scrollable(true).instance("
                                                      "1)).scrollIntoView(new UiSelector().textContains(\"" + text + "\").instance(1))").click()
