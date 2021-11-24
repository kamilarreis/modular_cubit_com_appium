const wdio = require('webdriverio');
const assert = require('assert');
const find = require('appium-flutter-finder');

// const osSpecificOps = process.argv[2] === 'android' ? {
//   platformName: 'Android',
//   deviceName: 'Pixel_4_API_31',
//   app: __dirname + '/Users/kamilareis/Documents/teste\ com\ appium/app/build/app/outputs/flutter-apk/app-debug.apk',
// } : process.argv[2] === 'ios' ? {
//   platformName: 'iOS',
//   automationName: 'XCUITest',
//   deviceName: 'iPhone 12 Pro Max',
//   platformVersion: '14.2',
//   app: __dirname + '/../../appium_example/Build/ios/Debug-iphonesimulator/Runner.app',
//   noReset: true,
//   udid: "auto",

// } : {};

const opts = {
  port: 4723,
  path: '/wd/hub',
  capabilities: {
    platformName: "Android",
    deviceName: 'Pixel_4_API',
    app:'/Users/kamilareis/Documents/modular_com_appium/app/build/app/outputs/flutter-apk/app-debug.apk',
    automationName: "Flutter"
  }
};

(async () => {
  console.log(opts);
  console.log('Initial app testing')

  const driver = await wdio.remote(opts);
  assert.strictEqual(await driver.execute('flutter:checkHealth'), 'ok');
  await driver.execute('flutter:clearTimeline');
  await driver.execute('flutter:forceGC');

  await new Promise(r => setTimeout(r, 2800));

  //Enter One page
  const btnLogin = find.byValueKey('btn-login');
  const inputUser = find.byValueKey('input-user');
  const inputPassword = find.byValueKey('input-password');
  await new Promise(r => setTimeout(r, 600));

  await driver.execute('flutter:waitFor', btnLogin);
  await driver.elementSendKeys(inputUser, 'testkamireis@gmail.com')
  await driver.elementSendKeys(inputPassword, '123456')
  await driver.elementClick(btnLogin);

  await new Promise(r => setTimeout(r, 900));
  //Enter Two page
  const textCount = find.byValueKey('count-key');
  const CustomWidget = find.byType('CustomTextExample');

  await driver.execute('flutter:waitFor', find.byType('Scaffold'));
  assert.strictEqual(await driver.getElementText(find.byText('Custom Widget')), 'Custom Widget');

  //pquando quiser clicar elementClick
  await driver.elementClick(CustomWidget);
  await new Promise(r => setTimeout(r, 600));
  assert.strictEqual(await driver.getElementText(textCount), '1');

  await driver.elementClick(CustomWidget);
  await new Promise(r => setTimeout(r, 600));
  assert.strictEqual(await driver.getElementText(textCount), '2');

  // return page
  await driver.elementClick(find.pageBack())

//  driver.deleteSession();
})();

