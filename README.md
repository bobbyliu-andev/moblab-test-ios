## Project initial setup
1. clone project

```bash
git clone https://github.com/bobbyliu-andev/moblab-test-ios.git
```
2. cd into project folder and run:
```bash
pod install
```
3. open iOSSP008.xcworkspace and install app on device/emulator

4. Make sure port 80 is available and run:
```bash
docker run -d -p 80:80 bobbyliu117/mobweb:test-deep-linking
```

5. Find IP of localhost and visit in device/emulator. Click misocode or misocoe/u/bobbyliu117/p001 to test deep linking openning the app.

## Server end

Click [HERE](https://misocode.com/apple-app-site-association) to see the returning JSON

Code attached below:
```javascript
app.get('/apple-app-site-association', (req, res) => {
    res.setHeader("Content-Type", "application/json")
    res.send(JSON.stringify({
        "applinks": {
            "apps": [],
            "details": [
                {
                    "appID": "FMP4QX3GYL.faith.changliu.iOSSP008",
                    "paths": [
                        "/",
                        "/*"
                    ]
                }
            ]
        }
    }))
})
```