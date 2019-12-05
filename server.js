const Koa  = require('koa')
const logger = require('koa-morgan')
const Router = require('koa-router')
const bodyParser = require('koa-body')()

const models = require('./models/')

const server = new Koa() 
const router = new Router()

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
    const successmsg = {
        "status":true,
        "message":"Insertion Successfull"
    }
    ctx.body = {
        //successmsg
        shipment
    }
})

router.put('/shipmentdetails/:id', bodyParser, async ctx => {
    let shipment = await models.Shipmentdetails.findOne({where: { id: ctx.params.id }})
    shipment = await shipment.update(ctx.request.body)
    const successmsg = {
        "status":true,
        "message":"Updation Successfull"
    }
    ctx.body = {
        successmsg
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
.use(ctx => {
    ctx.body = 'Hello Welcome to POC API Demo'
})
.listen(4000)


