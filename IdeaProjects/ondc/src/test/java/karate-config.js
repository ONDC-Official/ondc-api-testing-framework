function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: 'https://buyer-app.ondc.org',
	tokenId: 'Bearer eyJhbGciOiJSUzI1NiIsImtpZCI6ImFhZmE4MTJiMTY5NzkxODBmYzc4MjA5ZWE3Y2NhYjkxZTY4NDM2NTkiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL3NlY3VyZXRva2VuLmdvb2dsZS5jb20vb25kYy11aSIsImF1ZCI6Im9uZGMtdWkiLCJhdXRoX3RpbWUiOjE2NDk5NTk5NTEsInVzZXJfaWQiOiJveTFBQkoxS3VDVTZ4UW82WnVidVdTekRVdHEyIiwic3ViIjoib3kxQUJKMUt1Q1U2eFFvNlp1YnVXU3pEVXRxMiIsImlhdCI6MTY0OTk1OTk1MSwiZXhwIjoxNjQ5OTYzNTUxLCJlbWFpbCI6InJvbWFsMTYxMTkzQGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjpmYWxzZSwiZmlyZWJhc2UiOnsiaWRlbnRpdGllcyI6eyJlbWFpbCI6WyJyb21hbDE2MTE5M0BnbWFpbC5jb20iXX0sInNpZ25faW5fcHJvdmlkZXIiOiJwYXNzd29yZCJ9fQ.ykrNLSTdHgi1O4_jNpzfqE-fP9fRAl0gnM6ahlStAudYgI6AfC1NOIcfEl5NOwdHGyVaM7J6GPTPIQ1ljDW2YAUTm7-oojRo5YzDYgCdDB3WviFVc3s1jDpz_j1e2NQAVEQLkYp1AC4K7-CRP0ulby2JSwQVEjNR-EwhIBlO8rxPBXIFcWBZhYwSp9zWEyxjiExlF1QA02wMwVAgmyWHD_De5xubU9bY7wLJ47uaZJxar6kU_35lc51ElMi-b0IFEb3U524J8phIA8RExeIxW5LIbsm9ZVqFro6PvaYhtyk9PFbxfJlB2CAC2kPUrS8n9VNHnJmL3mHHn6QK4Ex7Ww'
  }
  if (env == 'dev') {
    // customize
    // e.g. config.foo = 'bar';
  } else if (env == 'e2e') {
    // customize
  }
  return config;
}