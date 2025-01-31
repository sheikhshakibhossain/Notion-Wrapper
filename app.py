#!/bin/python3

from PyQt5.QtWidgets import QApplication, QMainWindow
from PyQt5.QtWebEngineWidgets import QWebEngineView
from PyQt5.QtCore import QUrl
import sys

class WebBrowser(QMainWindow):
    def __init__(self, url):
        super().__init__()
        screen = QApplication.primaryScreen().geometry()
        width = int(screen.width() * 0.85)
        height = int(screen.height() * 0.85)
        self.setGeometry(100, 100, width, height)
        self.setWindowTitle("Notion")

        # Set up the web engine view
        self.browser = QWebEngineView()
        self.browser.setUrl(QUrl(url))

        # Enable persistent storage (cookies, cache, etc.)
        self.browser.settings().setAttribute(self.browser.settings().LocalStorageEnabled, True)
        self.browser.settings().setAttribute(self.browser.settings().LocalContentCanAccessFileUrls, True)
        self.browser.settings().setAttribute(self.browser.settings().LocalContentCanAccessRemoteUrls, True)

        self.setCentralWidget(self.browser)

if __name__ == "__main__":
    app = QApplication(sys.argv)
    url = "https://www.notion.so/login"
    window = WebBrowser(url)
    window.show()
    sys.exit(app.exec())