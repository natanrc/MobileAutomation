*** Settings ***
Documentation               Base keyword related
Library                     AppiumLibrary


*** Variables ***
${REMOTE_URL}                    http://localhost:4723/wd/hub
#${PLATFORM_NAME}                Android
#${PLATFORM_VERSION}             8.1
#${DEVICE_NAME}                  emulator-5554
#${APP_PACKAGE}                  com.example.myapplication
#${APP_ACTIVITY}                 com.example.myapplication.MainActifity
#${AUTOMATION_NAME}              UiAutomator2


*** Keywords ***
Open Flight Application
        Open Application                    ${REMOTE_URL}
        ...                                 automationName=UiAutomator2
        ...                                 platformName=Android
        ...                                 platformVersion=8.1
        ...                                 deviceName=emulator-5554
        ...                                 appPackage=com.example.myapplication
        ...                                 appActivity=com.example.myapplication.MainActivity