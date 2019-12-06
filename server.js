const Koa  = require('koa')
const logger = require('koa-morgan')
const Router = require('koa-router')
const bodyParser = require('koa-body')()
const cors = require('koa2-cors')

const models = require('./models/')

const server = new Koa() 
const router = new Router()

const options = {
    origin: true,
    methods: 'GET,HEAD,PUT,PATCH,POST,DELETE',
  };

const koaOptions = {
    origin: true,
    credentials: true
};

router.use(async (ctx, next) => {
    ctx.set('Access-Control-Allow-Credentials', 'true');
    ctx.set('Access-Control-Allow-Origin', '*');
    await next();
  });

router.options('*', async (ctx, next) => {
    ctx.set('Access-Control-Allow-Methods', 'GET, POST, OPTIONS');
    ctx.set('Access-Control-Allow-Origin', '*');
    ctx.set(
      'Access-Control-Allow-Headers',
      ctx.get('Access-Control-Request-Headers')
    );
    ctx.status = 204;
    await next();
  });

router.get('/shipmentdetails', async ctx => {
    const shipment = await models.Shipmentdetails.findAll()
    ctx.body = {
        shipment
    }
})

router.get('/shipmentdetails/:id', async ctx => {
    const shipment = await models.Shipmentdetails.findOne({where: { id: ctx.params.id }})
    ctx.body = {
        shipment
    }
})

router.post('/shipmentdetails', bodyParser, async ctx => {
    const shipment = await models.Shipmentdetails.create(ctx.request.body)
    const response = {
        "status":true,
        "message":"Insertion Successfull"
    }
    ctx.body = {
        response
        //shipment
    }
})

router.put('/shipmentdetails/:id', bodyParser, async ctx => {
    let shipment = await models.Shipmentdetails.findOne({where: { id: ctx.params.id }})
    shipment = await shipment.update(ctx.request.body)
    const response = {
        "status":true,
        "message":"Updation Successfull"
    }
    ctx.body = {
        response
    }
})

router.del('/shipmentdetails/:id', bodyParser, async ctx => {
    let shipment = await models.Shipmentdetails.findOne({where: { id: ctx.params.id }})
    shipment = await shipment.destroy()
    const successmsg = {
        "status":true,
        "message":"Deletion Successfull"
    }
    ctx.body = {
        successmsg
    }
  })
  



  

  
server
.use(logger('tiny')) 
.use(router.routes())
.use(router.allowedMethods())
.use(cors(({
    origin: '*',
    exposeHeaders: ['WWW-Authenticate', 'Server-Authorization'],
    maxAge: 5,
    credentials: true,
    allowMethods: ['GET', 'POST', 'DELETE'],
    allowHeaders: ['Content-Type', 'Authorization', 'Accept'],
  })))
.use(cors(options))

.use(function *(){
    this.set('Access-Control-Allow-Origin', '*');
})
.use(ctx => {
    ctx.body = 'Hello Welcome to POC API Demo'
})
.listen(4000)


