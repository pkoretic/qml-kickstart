# qml-kickstart

The idea of this project is to provide a simple and concise example on how one might start developing their QML application.

What do we provide:

* Android, iOS, MacOS, Windows and Linux support with example code for platforms
* live reload in DEBUG mode, production release bundled to .qrc in RELEASE mode
* predefined icons from [Ionicons](http://ionicons.com)
* predefined Roboto font
* minor sugar like HTTP caching using QNetworkDiskCache, ignoring SSL cerficates errors for development and similar

## How to

### Debug mode

In debug mode, source files are served over HTTP using [Node.js](https://nodejs.org) HTTP server and QML [Loader](http://doc.qt.io/qt-5/qml-qtquick-loader.html) element.

To notify client that something is changed Websocket communication is used.

For more details have a look into `server` directory.

Start server from `server` directory:

```
npm start
```

Enter your server (host where you started your server) ip into `src/config.js`.

Open qml-kickstart.pro and select `Debug` build.
Build and deploy.
After you change any `.qml` or `.js` file, application will reload automatically.

### Release mode

Open QML-Kickstart.pro and select `Release` build.
Build and deploy.

In this mode, everything is bundled and used from .qrc files.
