import koa from "koa";
import router from "koa-route";
import * as api from "./api";

const app = new koa();

app.use(router.post('/wapp/request', api.getWhatsappSurvey));
app.use(router.post('/wapp/response', api.postWhatsappSurvey));

app.on("error", error => {
  console.error(error.stack);
});

const port = process.argv.length >= 3 ? process.argv[2] : 8000;

if (!module.parent) {
  // server running
  app.listen(port);
}

// used from mocha
export default app;