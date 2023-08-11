const awsLambdaFastify = require('@fastify/aws-lambda')
const fastify = require('fastify')

const app = fastify()
app.get('*', (request, reply) => reply.send(request.url))

if (require.main === module) {
  app.listen({ port: 3000 }, (err) => {
    if (err) console.error(err)
    console.log('server listening on 3000')
  })
} else {
  module.exports = app
}

exports.handler = awsLambdaFastify(app)
