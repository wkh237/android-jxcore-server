# android-jxcore-server

This is a sample which uses [JXcore](http://jxcore.com/home/) to start a [Express](https://github.com/expressjs/express) server on your Android device.

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
$ sh start-server.sh
```

When you hit Ctrl+C the serve will shutdown.

**Background mode**

start server

```
$ sh start-server-bg.sh
```

stop server

```
$ sh stop-server.sh
```


