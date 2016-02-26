# android-jxcore-server

This is an example which uses [JXcore](http://jxcore.com/home/) to start an [Express](https://github.com/expressjs/express) server on your Android device's 8122 port. This server redirect all HTTP requests to www.google.com.

# Usage

Clone the project into any folder, and plug your Android device besure that ADB connected to it.

Then execute following commands

**IA32 device**

```
$ sh setup.sh ia32
```

**arm device**

```
$ sh setup.sh arm
```

After it successfully download and push files execute

```
$ sh start-server.sh [ia32|arm]
```

For example

```
$ sh start-server.sh arm http://www.google.com
```

When you hit Ctrl+C the server will be terminated.

**Background mode**

start server

```
$ sh start-server-bg.sh [ARCH] [Url you wish to redirect]
```

stop server

```
$ sh stop-server.sh
```

**Change server code**

Simply edit server.js for your need.
