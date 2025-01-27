# TikTok Automation Bot

The TikTok Automation Bot is a Python script designed to automate various interactions with TikTok profiles through [Zefoy](https://zefoy.com/). It provides a streamlined way to perform actions such as viewing videos, liking content, and more, utilizing the Selenium WebDriver for browser automation.

### All options are available and functioning correctly as of 29th January 2025
```
1. run Run.py
2. Solve Captcha
3. Ignore the popup "consent or not"
4. Choose in the console what option you want
5. Paste in url in console and username if u choose "comment likes"
6. Sit back and relax and let the script do its thing it will go on repeat until stopped so u dont have to do anything now. 
```
## Prerequisites

Before you can run the TikTok Automation Bot, you need to have the following installed on your system:

- Python 3.6 or newer
- pip (Python package installer)
- Google Chrome or Chromium browser
- ChromeDriver (compatible with your browser version)

## Installation

Follow these steps to get the TikTok Automation Bot up and running on your machine:

1. **Clone the repository:**

   ```sh
   git clone https://github.com/zebbern/Zefoy-Automator-2025.git
   cd Zefoy-Automator-2025
   ```

2. **Set up a virtual environment (optional but recommended):**

   - For Unix/macOS:

     ```sh
     python3 -m venv venv
     source venv/bin/activate
     ```

   - For Windows:

     ```sh
     python -m venv venv
     .\venv\Scripts\activate
     ```

3. **Install the required packages:**

   ```sh
   pip install -r requirements.txt
   ```

## Usage

To run the TikTok Automation Bot, execute the script from the command line. Ensure you're in the project directory and your virtual environment is activated (if you've set one up).

```sh
python run.py
```

Follow the on-screen instructions to complete the captcha on [Zefoy](https://zefoy.com/) and select the services you wish to automate.

## Features

- Automate multiple interactions with TikTok profiles via Zefoy.com.
- User-friendly command-line interface for easy interaction.
- Support for multiple URLs, rotating through each for automated actions.
- Dynamic service status checking ensures that only available services are interacted with.
- Graceful handling of internet connectivity issues and script interruptions.

## Acknowledgments

Special thanks to [Zefoy](https://zefoy.com/) for their services, which made this project possible. This script is intended for educational purposes and should be used responsibly and ethically.

## Disclaimer

This project is not affiliated with [TikTok](https://www.tiktok.com/), [Zefoy](https://zefoy.com/), or any related entities. It was created for educational and research purposes only. Users are advised to ensure they comply with TikTok's terms of service and use the script ethically.
