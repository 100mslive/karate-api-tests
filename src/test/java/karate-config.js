function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'qa';
  }
  var config = {
    env: env,
    baseUrl: 'https://qa-in2.100ms.live/hmsapi',
    appSecret: '26nL6KVZ2u3MODHNE4ugxf0mEQA-0t0W-CxOSSAOKFl5Waq0QkH9XGtImbEo9sgM2oe3eerzMrcM8xCfqujK-jIfncwUFt6BabgB49ELmLFnXO35h29mdav9N2d8TCG8r5-5DmGT2wiNDQZDe3NwmM0dp4HCWSiJn9SpIuiUpxc=',
    appAccessKey: '62822daf05c6487f9e556455' ,
  }
  if (env == 'dev') {
     config.baseUrl = 'https://dev-in2.100ms.live/hmsapi';
     config.appSecret = '26nL6KVZ2u3MODHNE4ugxf0mEQA-0t0W-CxOSSAOKFl5Waq0QkH9XGtImbEo9sgM2oe3eerzMrcM8xCfqujK-jIfncwUFt6BabgB49ELmLFnXO35h29mdav9N2d8TCG8r5-5DmGT2wiNDQZDe3NwmM0dp4HCWSiJn9SpIuiUpxc=' ;
     config.appAccessKey = '62822daf05c6487f9e556455';

  } else if (env == 'prod') {
     config.baseUrl = 'https://prod-in2.100ms.live/hmsapi';
     config.appSecret = 't7Iwtgep4Qs67C4fU-Ex3_CiVYlEZgHXnF9S4lypmwrWlaKpLk7eGJyWGBisZOCHyK0JN-1ikN7b5BmPWieG7wj1foHQ2t9syR6lfZ0nQX0Syvgqy8w-QYaSY-hts5WN71iM9x3DATpu6rsWeOP1Zh1Zv5gtwLEfKBIUCz38JfI=';
     config.appAccessKey = '62822ebfb873787aa26e9bdd';
  }
  return config;
}