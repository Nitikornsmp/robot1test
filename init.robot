*** Settings ***
Library     Selenium2Library
Resource    resources/configs/alpha/env_config.robot
Resource    locators/component/login_locator.robot

Resource    keywords/common/web_common.robot

*** Variables ***
${chrome}    chrome
${firefox}    ff